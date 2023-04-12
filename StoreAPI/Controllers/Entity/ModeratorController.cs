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
    public class ModeratorController : UserController
    {
        public ModeratorController(ApplicationContext context, IConfiguration conf, IHttpContextAccessor contextAccessor) : base(context, conf, contextAccessor)
        {
        }
        [Authorize(Roles = "admin,moderator")]
        [Route("deleteBook")]
        public async Task<JsonResult> DeleteBookAsync([FromBody] Books book)
        {
            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync(@"DELETE [dbo].[Books] WHERE id = @id", new
                {
                    book.id
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Книга не удалена!" }) : new JsonResult(new { success = "Книга удалена!" });
        }
        [Authorize(Roles = "admin,moderator")]
        [Route("insertBook")]
        public async Task<JsonResult> InsertBookAsync([FromBody] Books book)
        {
            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync(@"INSERT INTO [dbo].[Books]  (name, price, author, description, image, popular) VALUES  (@name, @price, @author, @description, @image, @popular)", new
                {
                    book.name,
                    book.price,
                    book.author,
                    book.description,
                    book.image,
                    book.popular
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Книга не добавлена!" }) : new JsonResult(new { success = "Книга добавлена!" });
        }
        [Authorize(Roles = "admin")]
        [Route("selectBooks")]
        public async Task<JsonResult> SelectBooksAsync()
        {
            IEnumerable<Books> courses;

            try
            {
                courses = await _conn.QueryAsync<Books>("SELECT * FROM Books ORDER BY id");
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return new JsonResult(courses);
        }

        [Authorize(Roles = "admin,moderator")]
        [Route("deleteGenre")]
        public async Task<JsonResult> DeleteGenreAsync([FromBody] Genres genre)
        {
            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync(@"DELETE [dbo].[Genres] WHERE id = @id", new
                {
                    genre.id
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Жанр не найден!" }) : new JsonResult(new { success = "Жанр удален!" });
        }
        [Authorize(Roles = "admin,moderator")]
        [Route("insertGenre")]
        public async Task<JsonResult> InsertGenreAsync([FromBody] Genres genre)
        {
            int countRows = 0;
            
            try
            {
                countRows = await _conn.ExecuteAsync(@"INSERT INTO [dbo].[Books]  (name, image) VALUES (@name, @image)", new
                {
                    genre.name,
                    genre.image
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Жанр не добавлен!" }) : new JsonResult(new { success = "Жанр добавлена!" });
        }
        [Authorize(Roles = "admin,moderator")]
        [Route("selectGenres")]
        public async Task<JsonResult> SelectGenresAsync()
        {
            IEnumerable<Genres> courses;

            try
            {
                courses = await _conn.QueryAsync<Genres>("SELECT * FROM Genres ORDER BY id");
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return new JsonResult(courses);
        }
        [Authorize(Roles = "admin,moderator")]
        [Route("updateGenre")]
        public async Task<JsonResult> UpdateGenreAsync([FromBody] Genres genre)
        {
            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync("UPDATE Genres SET name = @name, image = @image WHERE id = @id", new
                {
                    name = genre.name,
                    image = genre.image,
                    id = genre.id
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Жанр не найден!" }) : new JsonResult(new { success = "Жанр изменен!" });
        }
    }
}
