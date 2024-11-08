using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;
using System.Data.SqlClient;
using Dapper;

namespace MovieApp.Controllers;

public class HomeController : Controller
{
    public async Task<IActionResult> IndexAsync()
    {
        var connectionString = "Server=localhost,1441;Database=PopcornViews;User=SA;Password=YourStrong@Passw0rd;TrustServerCertificate=true";

        var connection = new SqlConnection(connectionString);


        var queryAppSetting = "select * from AppSettings";
        var appSetting = (await connection.QueryAsync<AppSettings>(queryAppSetting)).First();


        var queryCategories = "select * from Categories";
        var categories = await connection.QueryAsync<Category>(queryCategories);

        var queryMovies = "select * from Movies";
        var movies = await connection.QueryAsync<Movies>(queryMovies);


        var querySocials = "select * from Socials";
        var socials = await connection.QueryAsync<Socials>(querySocials);

        var queryContacts = "select * from Contacts";
        var contacts = await connection.QueryAsync<Contacts>(queryContacts);

        HomePageModel model = new()
        {
            AppSetting = appSetting,
            Category = categories,
            Movies = movies,
            Socials = socials,
            Contacts = contacts

        };
        return View(model);
    }


}

internal class Category
{
}