using System.Diagnostics;
using System;
using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;


namespace MovieApp.Controllers;

    public class ContactController : Controller
    {
        // GET: ContactController
        public  async Task<ActionResult> Index()
        {
            var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryContacts = "select * from Contacts";
        var contacts = await connection.QueryAsync<Contact>(queryContacts);
            return View(contacts);
        }

    }

