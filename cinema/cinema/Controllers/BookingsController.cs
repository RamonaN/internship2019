﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cinema.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cinema.Controllers
{
    [Route("api/[controller]")]
    public class BookingsController : Controller
    {
        private readonly CinemaContext _cinemaContext;

        public BookingsController(CinemaContext cinemaContext)
        {
            _cinemaContext = cinemaContext;
        }
        // GET: api/<controller>
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Bookings>>> GetBookings()
        {
            //using (CinemaContext _context = new CinemaContext())
            //{
            //    return await _context.Bookings.ToListAsync();
            //}
            return await _cinemaContext.Bookings.ToListAsync();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
