using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using StoreAPI.Data;
using StoreAPI.Models;
using StoreAPI.Services;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Http;
using StoreAPI.DTO;
using System.Xml;
using System.Collections.Generic;
using System;

namespace StoreAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : Controller
    {

        protected SqlConnection _conn;
        protected ApplicationContext db;
        protected MainUsers user;
        
        public UserController(ApplicationContext context, IConfiguration  conf, IHttpContextAccessor contextAccessor)
        {
            _conn = new SqlConnection(conf.GetConnectionString("DefaultConnection"));
            db = context;
            _conn.Open();
            user = new MainUsersServices(db).GetByLogin(contextAccessor.HttpContext.User.Identity.Name);
        }

        [Authorize]
        [Route("getinfo")]
        public JsonResult GetInfo()
        {
            return new JsonResult(new {
                id = user.id,
                login = user.login,
                email = user.email,
                role = user.role
            });
        }

        [Route("getBooks")]
        public async Task<JsonResult> GetAllBooks([FromBody] AllBooks body)
        {
            string genreStr = " AND g.id IN (";

            foreach(int genre in body.genres)
            {
                genreStr += genre.ToString() + ",";
            }
            genreStr = genreStr[..^1] + ") ";

            string query =
            @$"SELECT 
	            b.*,
	            (SELECT g.id, g.name, g.image
		            FROM Books_Genres as bg
		            INNER JOIN Genres as g ON bg.idGenre = g.id 
		            WHERE bg.idBook = b.id 
		            FOR XML PATH ('genre'), ROOT ('data')) as genres
            FROM Books as b
            {body.genres.Length switch { 
                0 => "",
                _ =>
                @"INNER JOIN Books_Genres as bg ON b.id = bg.idBook
                 INNER JOIN Genres as g ON bg.idGenre = g.id"
            }}
            WHERE 
            b.name LIKE '%'+ @name +'%'
            {body.genres.Length switch { 
                0 => "",
                _ => genreStr
            }}            
            ORDER BY {body.isPopular switch
            {
                true => "popular",
                _ => "date"
            }} {body.isUp switch
            {
                true => " asc ",
                _ => " desc "
            }}
            OFFSET @page ROWS
            FETCH NEXT 12 ROWS ONLY";

            var books = (await _conn.QueryAsync<BookWithGenres>(query, new
            {
                page = (body.page - 1) * 12,
                name = body.name
            })).AsList();
            

            for(int i = 0; i < books.Count; i++)
            {
                XmlDocument xml = new XmlDocument();
                xml.LoadXml(books[i].genres);

                books[i].listGenres = new List<Genres>();

                foreach (XmlNode elem in xml.SelectSingleNode("data").ChildNodes)
                {
                    books[i].listGenres.Add(new Genres()
                    {
                        id = int.Parse(elem.SelectSingleNode("id").InnerText),
                        name = elem.SelectSingleNode("name").InnerText,
                        image = elem.SelectSingleNode("image") == null ? "" : elem.SelectSingleNode("image").InnerText,
                    });
                }

                books[i].genres = "";
            }

            query = @$"SELECT 
	                COUNT(b.id) as cont
                FROM Books as b {body.genres.Length switch {
                    0 => "",
                    _ =>
                    @"INNER JOIN Books_Genres as bg ON b.id = bg.idBook
                     INNER JOIN Genres as g ON bg.idGenre = g.id"
                }}
                WHERE 
                b.name LIKE '%' + @name + '%' 
                {body.genres.Length switch {
                    0 => "",
                    _ => genreStr
                }}";

            int countPage = await _conn.QueryFirstAsync<int>(query, new {
                name = body.name
            });

            countPage = (int)Math.Ceiling((double)((double)countPage/(double)12));

            return new JsonResult(new { books, countPage });
        }

        [Route("getGenres")]
        public async Task<JsonResult> GetGenres()
        {
            var courses = await _conn.QueryAsync<Genres>("SELECT * FROM Genres ORDER BY id");

            return new JsonResult(courses);
        }
    }
}
