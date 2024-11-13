using System;
using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;

namespace MovieApp.Controllers

    public class CategoryController : Controller
    {
        public async Task<ActionResult> Aksiyon()
        {
            var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryMovie = "SELECT * FROM Movies WHERE CategoryId = 1;";
        var moviesaksiyon = await connection.QueryAsync<Movie>(queryMovie);

            return View(moviesaksiyon);
        }

        public async Task<IActionResult> Komedi()
        {
             var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryMovie = "SELECT * FROM Movies WHERE CategoryId = 2;";
        var movieskomedi = await connection.QueryAsync<Movie>(queryMovie);

            return View(movieskomedi);
        }

        public async Task<IActionResult> Drama()
        {
             var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryMovie = "SELECT * FROM Movies WHERE CategoryId = 3;";
        var moviesdrama = await connection.QueryAsync<Movie>(queryMovie);
            return View(moviesdrama);
        }

        public async Task<IActionResult> Korku()
        {
             var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryMovie = "SELECT * FROM Movies WHERE CategoryId = 4;";
        var movieskorku = await connection.QueryAsync<Movie>(queryMovie);
            return View(movieskorku);
        }

        public async Task<IActionResult> BilimKurgu()
        {
             var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";
        var connection = new SqlConnection(connectionString);

        var queryMovie = "SELECT * FROM Movies WHERE CategoryId = 5;";
        var moviesbilim = await connection.QueryAsync<Movie>(queryMovie);
            return View(moviesbilim);
        }

    }

