using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WU.BL;

namespace WU.UI.Controllers
{
    public class ETController : Controller
    {
        public ETBL ET = new ETBL();
        // GET: ET 
        public ActionResult Index()
        {
            return View();
        }
    }
}