using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using MovieApp.Models;

namespace MovieApp.Areas.Kategori.Controllers
{
    [Area("Kategori")]
    public class CategoryController : Controller
    {
        private readonly string connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        private async Task<IEnumerable<Movie>> GetMoviesByCategory(int categoryId)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var queryMovie = "SELECT * FROM Movies WHERE CategoryId = @CategoryId;";
                return await connection.QueryAsync<Movie>(queryMovie, new { CategoryId = categoryId });
            }
        }

        public async Task<ActionResult> Aksiyon()
        {
            var moviesaksiyon = await GetMoviesByCategory(1);
            return View(moviesaksiyon);
        }

        public async Task<ActionResult> Komedi()
        {
            var movieskomedi = await GetMoviesByCategory(2);
            return View(movieskomedi);
        }

        public async Task<ActionResult> Drama()
        {
            var moviesdrama = await GetMoviesByCategory(3);
            return View(moviesdrama);
        }

        public async Task<ActionResult> Korku()
        {
            var movieskorku = await GetMoviesByCategory(4);
            return View(movieskorku);
        }

        public async Task<ActionResult> BilimKurgu()
        {
            var moviesbilim = await GetMoviesByCategory(5);
            return View(moviesbilim);
        }
    }
}
