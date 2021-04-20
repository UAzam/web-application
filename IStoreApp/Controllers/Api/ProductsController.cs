using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using IStoreApp.Models;
using IStoreApp.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace IStoreApp.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        // GET: api/<ProductsController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<ProductsController>/5
        [HttpGet("{pageNum}")]
        public IEnumerable<Product> Get(int pageNum)
        {
            int pageSize = 4;
            int startPosition = (pageNum - 1) * pageSize;

            using(var context = new ProductsDBContext())
            {
                List<Product> products = context.Products.ToList();
                if(products.Count >= startPosition)
                {
                    return products.Skip(startPosition).Take(pageSize);
                        
                }
                else
                {
                    return new List<Product>();
                }
            }
        }
    }
}
