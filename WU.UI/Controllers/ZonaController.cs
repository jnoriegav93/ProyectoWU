using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WU.BL;

namespace WU.UI.Controllers
{
    public class ZonaController : Controller
    {
        public ZonaBL zonaBL = new ZonaBL();
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
    }
}