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
        public UbigeoBL ubigeoBL = new UbigeoBL();
        public List<ZonaBE> lstZonas = new List<ZonaBE>();


        // GET: Zonas
        public ActionResult AsignarSubzona()
        {
            var model = new ZonaController();
            return View(model);

        }
        public ActionResult CargarZonas()
        {
            return View(zonaBL.CargarZonas());
        }
        public ActionResult ListarET()
        {
            return View(etBL.ListarET());
        }
        [HttpPost]
        public ActionResult RegistrarSubZona(string txtCoord, string ddlZona, string ddlET)
        {
            SubzonaBE sz = new SubzonaBE()
            {
                codsubzona = 99,//nuevo correlativo, insertar con una secuencia
                codzona = Convert.ToInt32(ddlZona),
                nomsubzona = "SZ - " + ddlZona,
                coordenadas = txtCoord,// "123.00,40.052;123.00,40.052;123.00,40.052;",                
                fchregistro = DateTime.Now,
                estsubzona = "ACT"
            };
            String mensaje = "";
            if (ddlZona != "0" && txtCoord.Length > 0)
            {

                if (subzonaBL.RegistrarSubzona(sz))
                {

                    mensaje = GenerarScript("alert('INSERTADO');");
                }
                else
                {
                    mensaje = GenerarScript("alert('NO INSERTADO');");
                }
            }
            else
            {
                mensaje = GenerarScript("alert('Debe completar todos los campos');");
            }
            return Content(mensaje);
        }

        public String GenerarScript(String script)
        {
            return "<script language='javascript' type='text/javascript'>" + script + " window.location.href='/Zona/AsignarSubzona';</script>";
        }

        //Mantenimiento de Zonas

        /*public ActionResult MantenimientoZonas(ZonaBE param)
        {
            param = new ZonaBE()
            {
                fchinicio = "2019-01-01",
                fchfin = "2019-03-01",
                estzona = "0"
            };
            return View(zonaBL.ListarZonas(param));
        }*/

        public ActionResult MantenimientoZonas(string txtFchIni, string txtFchFin, string txtNombre, string ddlEstado)
        {
            txtNombre = txtNombre == null ? "" : txtNombre;
            txtFchIni = txtFchIni == null ? DateTime.Now.AddDays(1-DateTime.Now.Day).ToString("yyyy-MM-dd") : txtFchIni;
            txtFchFin = txtFchFin == null ? DateTime.Now.AddDays(1).ToString("yyyy-MM-dd") : txtFchFin;
            ddlEstado = ddlEstado == null ? "0" : ddlEstado;
            ZonaBE param = new ZonaBE()
            {
                dsczona = txtNombre.Trim(),
                fchinicio = Convert.ToDateTime(txtFchIni).ToString("yyyy-MM-dd"),
                fchfin = Convert.ToDateTime(txtFchFin).ToString("yyyy-MM-dd"),
                estzona = ddlEstado
            };
            return View(zonaBL.ListarZonas(param));
        }

        public ActionResult DetalleZona()
        {
            return View(new ZonaController());
        }
        public ActionResult CargarDetalleZona(String codzona)
        {
            return View(zonaBL.CargarDetalleZona(codzona));
        }

        public ActionResult DibujarZona(String codzona)
        {
            return View(zonaBL.DibujarZona(codzona));
        }

        public ActionResult NuevaZona()
        {
            return View(new ZonaController());
        }

        public ActionResult listarDepartamentos()
        {
            return View(ubigeoBL.listarDepartamentos());
        }

    }
}