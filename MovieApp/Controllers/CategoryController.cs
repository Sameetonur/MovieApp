using Microsoft.AspNetCore.Mvc;

namespace MovieApp.Controllers
{
    public class CategoryController : Controller
    {
        public ActionResult Aksiyon()
        {
            return View();
        }
        public ActionResult Komedi()
        {
            return View();
        }
        public ActionResult Drama()
        {
            return View();
        }
        public ActionResult Korku()
        {
            return View();
        }
        public ActionResult BilimKurgu()
        {
            return View();
        }

    }
}
