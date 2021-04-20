using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;
using IStoreApp.Models;

namespace IStoreApp.Data
{
    public class ProductsDBContext : DbContext
    {
        public DbSet<Product> Products { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=IB209M-10;Initial Catalog=IStoreApp;Integrated Security=True");
        }
    }
}
