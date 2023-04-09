using StoreAPI.Models;
using System;
using System.Collections.Generic;

namespace StoreAPI.DTO
{
    public class BookWithGenres
    {
        public int id { get; set; }
        public string name { get; set; }
        public decimal price { get; set; }
        public string author { get; set; }
        public string description { get; set; }
        public string image { get; set; }
        public DateTime date { get; set; }
        public int popular { get; set; }
        public string genres { get; set; }
        public List<Genres> listGenres { get; set; }
    }
}
