using System;
using MovieApp.Controllers;

namespace MovieApp.Models;

public class HomePageModel
{
    public AppSettings? AppSetting { get; internal set; }
    public IEnumerable<Contacts>? Contacts { get; internal set; }
    public IEnumerable<Socials>? Socials { get; internal set; }
    public IEnumerable<Movies>? Movies { get; internal set; }
    internal IEnumerable<Category>? Category { get; set; }
}
