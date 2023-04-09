namespace StoreAPI.DTO
{
    public class AllBooks
    {
        public bool isUp { get; set; }
        public bool isPopular { get; set; }
        public string name { get; set; }
        public int page { get; set; }
        public int[] genres { get; set; }
    }
}
