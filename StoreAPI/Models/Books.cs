using System;

namespace StoreAPI.Models
{
    public class Books
    {
        public int id { get; set; }
        public string name { get; set; }
        public decimal price { get; set; }
        public string author { get; set; }
        public string description { get; set; }
        public string image { get; set; }
        public DateTime date { get; set; }
        public int popular { get; set; }
    }
}
