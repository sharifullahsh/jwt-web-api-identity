﻿using BSAF.Models;
using BSAFWebApi.Models;
using BSAFWebApi.Models.Identity;
using BSAFWebApi.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace BSAFWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IConfiguration _config;
        private UserManager<User> _userManager = null;
        private SignInManager<User> _signInManager = null;
        DataContext db = null;

        public AuthController(IConfiguration config, UserManager<User> userManager,
        SignInManager<User> signInManager, DataContext context)
        {
            _config = config;
            _userManager = userManager;
            _signInManager = signInManager;
            db = context;
        }
        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] UserModel model)
        {
            var user = await _userManager.FindByNameAsync(model.Username);
            if (user == null)
            {
                return BadRequest("Invalide user name.");
            }
            //if (user.IsDeleted == true)
            //{
            //    return Unauthorized();
            //}
            var result = await _signInManager
               .CheckPasswordSignInAsync(user, model.Password, false);

            if (result.Succeeded)
            {
                var appUser = await _userManager.Users
                    .FirstOrDefaultAsync(u => u.NormalizedUserName == model.Username.ToUpper());
                return Ok(new
                {
                    token = GenerateJwtToken(appUser).Result,
                });
            }
            return Unauthorized();
        }
        [NonAction]
        private async Task<string> GenerateJwtToken(User user)
        {
            var claims = new[]
            {
                new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
                new Claim(ClaimTypes.Name, user.UserName.ToString()),

            };
            var key = new SymmetricSecurityKey(Encoding.UTF8
                .GetBytes(_config.GetSection("Jwt:Key").Value));

            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.Now.AddDays(1),
                SigningCredentials = creds
            };

            var tokenHandler = new JwtSecurityTokenHandler();

            var token = tokenHandler.CreateToken(tokenDescriptor);

            return tokenHandler.WriteToken(token);
        }

        //private async Task<bool>  AuthenticateUser(ApplicationUser login, string password)
        //{
        //    var user = await _userManager.FindByNameAsync(login.UserName);
            
         
        //    var result = await _signInManager.CheckPasswordSignInAsync(user, password, false);
        //    if (result.Succeeded)
        //    {
        //        return true;
        //    }
        //    return false;
        //}
     
    }
}