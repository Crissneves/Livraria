using Livraria.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Livraria.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {   
            return View();
        }
        public PartialViewResult Header()
        {
            return PartialView();
        }

        public PartialViewResult ListarLivros()
        {
            return PartialView();
        }

        public ActionResult CadastrarLivro()
        {
            ViewBag.Message = "Cadastrar Livros";

            return View();
        }

        public ActionResult Contato()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}