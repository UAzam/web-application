using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IStoreApp.Models
{
    public class Product
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Supplier { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
        public int Rating { get; set; }
        public string Image { get; set; }

    }
}
