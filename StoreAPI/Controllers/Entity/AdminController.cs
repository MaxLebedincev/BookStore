using Dapper;
using StoreAPI.Data;
using StoreAPI.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections.Generic;
using StoreAPI.Services;

namespace StoreAPI.Controllers.Entity
{
    [ApiController]
    [Route("api/[controller]")]
    [Authorize(Roles = "admin")]
    public class AdminController : UserController
    {
        public AdminController(ApplicationContext context, IConfiguration conf, IHttpContextAccessor contextAccessor) : base(context, conf, contextAccessor)
        {
        }

        
        [Route("deleteUser")]
        public async Task<JsonResult> DeleteUserAsync([FromBody] MainUsers user)
        {
            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync(@"DELETE FROM [dbo].[MainUsers] WHERE id = @id AND 'admin' != @role", new
                {
                    id = user.id,
                    role = user.role
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Пользователь не найден!" }) : new JsonResult(new { success = "Пользователь удален!" });
        }
        [Route("insertUser")]
        public JsonResult InsertUser([FromBody] MainUsers data)
        {
            if (string.IsNullOrEmpty(data.login) || string.IsNullOrEmpty(data.password) || string.IsNullOrEmpty(data.email) || string.IsNullOrEmpty(data.role))
                return new JsonResult(new { error = "Поле не заполненно!" });

            if (new MainUsersServices(db).GetByUsers(data.login, data.email) == null)
            {

                DateTime date = DateTime.Now;

                data.password = new Security.Security().GetHash(date.ToString() + data.password + date.ToString());

                new MainUsersServices(db).Add(data.login, data.email, data.role, data.password, date, date);

                return new JsonResult(new
                {
                    success = "Пользователь зарегестрирован!"
                });
            }

            return new JsonResult(new { error = "Почта или Логин уже используются." });
        }
        [Route("selectUser")]
        public async Task<JsonResult> SelectUserAsync()
        {
            IEnumerable<MainUsers> courses;

            try
            {
                courses = await _conn.QueryAsync<MainUsers>("SELECT * FROM MainUsers");
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return new JsonResult(courses);
        }
        [Route("updateUser")]
        public async Task<JsonResult> UpdateUserAsync([FromBody] MainUsers data)
        {
            if (string.IsNullOrEmpty(data.login) || string.IsNullOrEmpty(data.password) || string.IsNullOrEmpty(data.email) || string.IsNullOrEmpty(data.role))
                return new JsonResult(new { error = "Поле не заполненно!" });

            DateTime date = DateTime.Now;

            data.password = new Security.Security().GetHash(date.ToString() + data.password + date.ToString());

            int countRows = 0;

            try
            {
                countRows = await _conn.ExecuteAsync("UPDATE MainUsers SET login = @login, password = @password, email = @email, role = @role, updateDate = @date WHERE id = @id", new
                {
                    login = data.login,
                    password = data.password,
                    email = data.email,
                    role = data.role,
                    id = data.id,
                    updateDate = date
                });
            }
            catch (Exception)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Пользователь не найден!" }) : new JsonResult(new { success = "Пользователь изменен!" });
        }
    }
}
