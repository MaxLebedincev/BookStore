using Dapper;
using StoreAPI.Data;
using StoreAPI.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace StoreAPI.Controllers.Entity
{
    [ApiController]
    [Route("api/[controller]")]
    [Authorize(Roles = "admin,moderator")]
    public class ModeratorController : UserController
    {
        public ModeratorController(ApplicationContext context, IConfiguration conf, IHttpContextAccessor contextAccessor) : base(context, conf, contextAccessor)
        {
        }

        [Route("deleteBook")]
        public JsonResult DeleteBook([FromBody] Books book)
        {
            int countRows = 0;

            try
            {
                SqlCommand command = new SqlCommand(@"DELETE [dbo].[Books] WHERE id = @id", _conn);

                command.Parameters.AddWithValue("@id", book.id);

                countRows = command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Кннига не найдена!" }) : new JsonResult(new { success = "Книга удалена!" });
        }

        [Route("insertBook")]
        public JsonResult InsertBook([FromBody] Books book)
        {

            try
            {
                SqlCommand command = new SqlCommand(@"INSERT INTO [dbo].[Books]  (name, price, author, description, image, popular) VALUES  (@name, @price, @author, @description, @image, @popular)", _conn);

                command.Parameters.AddWithValue("@name", book.name);
                command.Parameters.AddWithValue("@price", book.price);
                command.Parameters.AddWithValue("@author", book.author);
                command.Parameters.AddWithValue("@description", book.description);
                command.Parameters.AddWithValue("@image", book.image);
                command.Parameters.AddWithValue("@popular", book.popular);

                command.ExecuteReader();
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return new JsonResult(new { success = "Книга добавлена!" });
        }

        [Route("deleteGenre")]
        public JsonResult DeleteGenre([FromBody] Genres genre)
        {
            int countRows = 0;

            try
            {
                SqlCommand command = new SqlCommand(@"DELETE [dbo].[Genres] WHERE id = @id", _conn);

                command.Parameters.AddWithValue("@id", genre.id);

                countRows = command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Жанр не найден!" }) : new JsonResult(new { success = "Жанр удален!" });
        }

        [Route("insertGenre")]
        public JsonResult InsertGenre([FromBody] Genres genre)
        {

            try
            {
                SqlCommand command = new SqlCommand(@"INSERT INTO [dbo].[Books]  (name, image) VALUES (@name, @image)", _conn);

                command.Parameters.AddWithValue("@name", genre.name);
                command.Parameters.AddWithValue("@image", genre.image);

                command.ExecuteReader();
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return new JsonResult(new { success = "Жанр добавлен!" });
        }
    }
}
