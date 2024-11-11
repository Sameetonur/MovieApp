using System;
using MovieApp.Controllers;

namespace MovieApp.Models;

public class HomePageModel
{
    public AppSetting? AppSetting { get; internal set; }
    public IEnumerable<Social>? Socials { get; internal set; }
    public IEnumerable<Movie>? Movies { get; internal set; }
}
