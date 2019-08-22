﻿using System.Collections.Generic;
using System.Threading.Tasks;
using Cinema.Domain.Models;
using Microsoft.AspNetCore.Mvc;

namespace Cinema.Domain.Interfaces
{
    public interface IUsersService
    {
        List<User> GetUsers();
        ActionResult<User> GetUser(int id);
        ActionResult<User> GetUserByCredentials(string username, string password);
        void PostUser([FromBody] User user);
        void PutUser(int id, [FromBody] User user);
        void DeleteUser(int id);
    }
}
