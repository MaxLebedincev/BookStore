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
        public JsonResult DeleteUser([FromBody] MainUsers user)
        {
            int countRows = 0;

            try
            {
                SqlCommand command = new SqlCommand(@"DELETE FROM [dbo].[MainUsers] WHERE id = @id AND 'admin' != @role", _conn);

                command.Parameters.AddWithValue("@id", user.id);
                command.Parameters.AddWithValue("@role", user.role);

                countRows = command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return new JsonResult(new { error = "Произошла ошибка!" });
            }

            return (countRows == 0) ? new JsonResult(new { success = "Пользователь не найден!" }) : new JsonResult(new { success = "Пользователь удален!" });
        }
        [Route("selectUser")]
        public async Task<JsonResult> SelectUser()
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
    }
}
