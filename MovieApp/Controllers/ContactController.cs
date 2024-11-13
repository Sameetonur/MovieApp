using System;
using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;

namespace MovieApp.Controllers;

public class ContactController : Controller
{
    public async Task<ActionResult> Index()
    {
        var connectionString = "Server=localhost,1441;Database=PopcornViews;User=sa;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        // Server = localhost,1441; Database = PopcornViews; User = SA; Password = YourStrong@Passw0rd; TrustServerCertificate = true
        var connection = new SqlConnection(connectionString);


        var queryContact = "select * from Contacts";
        var contacts = (await connection.QueryAsync<Contact>(queryContact));
        return View(contacts);
    }
}
