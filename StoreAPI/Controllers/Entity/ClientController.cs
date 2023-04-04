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
using System.Linq;
using System.Threading.Tasks;

namespace StoreAPI.Controllers.Entity
{
    [ApiController]
    [Route("api/[controller]")]
    public class ClientController : UserController
    {
        public ClientController(ApplicationContext context, IConfiguration conf, IHttpContextAccessor contextAccessor) : base(context, conf, contextAccessor)
        {
        }
    }
}
