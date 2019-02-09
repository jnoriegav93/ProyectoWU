using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WU.BL;
using WU.BE;

namespace WU.UI.Controllers
{
    public class ZonaController : Controller
    {
        public ZonaBL zonaBL = new ZonaBL();
        public SubzonaBL subzonaBL = new SubzonaBL();
        public ETBL etBL = new ETBL();


        // GET: Zonas
        public ActionResult AsignarSubzona()
        {
            var model = new ZonaController();
            return View(model);

        }
        public ActionResult ListarZonas()
        {
            return View(zonaBL.ListarZonas());

        }
        public ActionResult ListarET()
        {
            return View(etBL.ListarET());
        }
        
        public ActionResult RegistrarSubZona()
        {
            SubzonaBE sz = new SubzonaBE()
            {
                codsubzona = 99,
                codzona = 1,
                nomsubzona = "NOMBRE",
                coordenadas = "123.00,40.052;123.00,40.052;123.00,40.052;",
                fch_registro = DateTime.Now,
                estsubzona = "ACT"
            };
            String mensaje = "";

            if (subzonaBL.RegistrarSubzona(sz))
            {
                mensaje = "<script language='javascript'" +
                            "type='text/javascript'>alert('INSERTADO');" +
                            "window.location.href='/Zona/AsignarSubzona';" +
                            "</script>";
            }
            else
            {
                mensaje = "<script language='javascript'" +
                       "type='text/javascript'>alert('NO INSERTADO');" +
                       "window.location.href='/Zona/AsignarSubzona';" +
                       "</script>";
            }
            return Content(mensaje);
        }
    }
}