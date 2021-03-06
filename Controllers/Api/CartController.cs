﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using IStoreApp.Models;
using IStoreApp.Helper;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace IStoreApp.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartController : ControllerBase
    {
        // GET: api/<CartController>
        [HttpGet]
        public IEnumerable<CartItem> Get()
        {
            List<CartItem> cartItems = HttpContext.Session.GetObjectFromJson<List<CartItem>>("CartItems");
            if(cartItems == null)
            {
                cartItems = new List<CartItem>();
                HttpContext.Session.SetObjectAsJson("CartItems", cartItems);
            }
            return cartItems;
        }


        // POST api/<CartController>
        [HttpPost]
        public void Post([FromBody] CartItem cartItem)
        {
            List<CartItem> cartItems = HttpContext.Session.GetObjectFromJson<List<CartItem>>("CartItems");
            if (cartItems == null)
            {
                cartItems = new List<CartItem>();
                HttpContext.Session.SetObjectAsJson("CartItems", cartItems);
            }

            CartItem existingItem = cartItems.Find(c => c.Id == cartItem.Id);
            if (existingItem == null)
            {
                cartItems.Add(cartItem);
            }
            else
            {
                existingItem.Quantity += cartItem.Quantity;
                existingItem.Price = cartItem.Price * existingItem.Quantity;
            }

            HttpContext.Session.SetObjectAsJson("CartItems", cartItems);
        }

        // DELETE api/<CartController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            List<CartItem> cartItems = HttpContext.Session.GetObjectFromJson<List<CartItem>>("CartItems");
            if (cartItems != null)
            {
                cartItems.RemoveAll(c => c.Id == id);
            }
            HttpContext.Session.SetObjectAsJson("CartItems", cartItems);
        }
    }
}
