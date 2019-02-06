using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CARROS.ENTIDADES;
using CARROS.NEGOCIO;

namespace CARROS.UI.Controllers
{
    public class SeguridadController : Controller
    {
        UsuarioN usuarioN = new UsuarioN();
        // GET: Seguridad
        public ActionResult ValidarLogin(
                                  string User,
                                  string Password)
        {
            if (usuarioN.ValidarLogin(User, Password)!=null)
             return Redirect("/Carro/Index");
                
            else
             return Content("<script language='javascript'" +
                 "type='text/javascript'>alert('USUARIO INCORRECTO');" +
                          "window.location.href='/Carro/Login';" +
                          "</script>");
        }
    }
}