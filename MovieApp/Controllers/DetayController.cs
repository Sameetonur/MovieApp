using System.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;

namespace MovieApp.Controllers
{
    public class DetayController : Controller
    {
        private readonly string connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        private async Task<Movie> GetMovieById(int movieId)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var query = "SELECT * FROM Movies WHERE MovieId = @MovieId;"; // Sütun ismi MovieId olarak değiştirildi
                return await connection.QueryFirstOrDefaultAsync<Movie>(query, new { MovieId = movieId });
            }
        }

        public async Task<IActionResult> Index(int id)
        {
            // Filmi getir
            var movie = await GetMovieById(id);

            // if (movie == null)
            // {
            //     return NotFound("Film bulunamadı."); // Film bulunamazsa hata döndür
            // }

            return View(movie); // Filmi View'a gönder
        }
    }
}

