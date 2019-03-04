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
        public ActionResult AsignarETaSubzona(string txtCoord, string ddlZona, string ddlET)
        {
            SubzonaETBE sz = new SubzonaETBE()
            {
                codet = Convert.ToInt32(ddlET),
                codsubzona = Convert.ToInt32(ddlZona),            
                fchregistro = DateTime.Now,
                estsubzonaet = "0"
            };
            String mensaje = "";
            if (ddlZona != "0" && txtCoord.Length > 0)
            {

                if (subzonaBL.AsignarETaSubzona(sz))
                {

                    mensaje = GenerarScript("ASIGNADO", 1, "Zona/AsignarSubzona");
                }
                else
                {
                    mensaje = GenerarScript("NO ASIGNADO", 0, "Zona/AsignarSubzona");
                }
            }
            else
            {
                mensaje = GenerarScript("Debe completar todos los campos", 0, "Zona/AsignarSubzona");
            }
            return Content(mensaje);
        }

        public String GenerarScript(String script, int redir, String ubicacion)
        {
            return "<script language='javascript' type='text/javascript'>alert('" + script + "');" + (redir == 1 ? " window.location.href='/" + ubicacion + "';</script>" : "");
        }

        public ActionResult MantenimientoZonas(string txtFchIni, string txtFchFin, string txtNombre, string ddlEstado)
        {
            txtNombre = txtNombre == null ? "" : txtNombre;
            txtFchIni = txtFchIni == null ? DateTime.Now.AddDays(1 - DateTime.Now.Day).ToString("dd/MM/yyyy") : txtFchIni;
            txtFchFin = txtFchFin == null ? DateTime.Now.AddDays(1).ToString("dd/MM/yyyy") : txtFchFin;
            ddlEstado = ddlEstado == null ? "0" : ddlEstado;
            ZonaBE param = new ZonaBE()
            {
                dsczona = txtNombre.Trim(),
                fchinicio = txtFchIni,// Convert.ToDateTime(txtFchIni).ToString("yyyy-MM-dd"),
                fchfin = txtFchFin, //Convert.ToDateTime(txtFchFin).ToString("yyyy-MM-dd"),
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

        public ActionResult ObtenerCodzona()
        {

            return View(zonaBL.ObtenerCodzona());
        }

        public ActionResult RegistrarZona(string txtCodzona, string ddlDepartamento, string ddlProvincia, string ddlDistrito,
                                          string txtDsczona, string txtFchregistro, string ddlEstzona, string txtCoord)
        {
            String mensaje = "";
            if (ddlDepartamento != null && ddlProvincia != null && ddlDistrito != null && txtDsczona != null && txtFchregistro != null)
            {
                ZonaBE be = new ZonaBE()
                {
                    codubigeo = ddlDepartamento + ddlProvincia + ddlDistrito,
                    dsczona = txtDsczona,
                    fchregistro = Convert.ToDateTime(txtFchregistro),
                    estzona = "0"
                };
                if (ddlDepartamento != "00" && ddlProvincia != "00" && ddlDistrito != "00" && txtDsczona.Length > 0)
                {
                    String resultado = zonaBL.RegistrarZona(be);
                    if (resultado == "OK")
                    {
                        //Grabar el detalle
                        List<ZonaBE> lst = new List<ZonaBE>();
                        string[] coord = txtCoord.Split(';');
                        int id = 1;
                        foreach (string fila in coord)
                        {
                            if (fila != "")
                            {
                                lst.Add(new ZonaBE()
                                {
                                    codzona = txtCodzona,
                                    orden = id++,
                                    lat = Convert.ToDouble(fila.Split(',')[0]),
                                    lon = Convert.ToDouble(fila.Split(',')[1])
                                });
                            }
                        }
                        if (lst.Count > 0)
                        {
                            String res = zonaBL.RegistrarDetZona(lst);
                            if (res == "OK")
                            {
                                mensaje = GenerarScript("Se ha registrado correctamente.", 1, "Zona/MantenimientoZonas");
                            }
                            else
                            {
                                mensaje = GenerarScript(res, 0, "Zona/NuevaZona");
                            }
                        }

                    }
                    else
                    {
                        mensaje = GenerarScript(resultado, 0, "Zona/NuevaZona");
                    }
                }
                else
                {
                    mensaje = GenerarScript("Debe completar todos los campos", 0, "Zona/NuevaZona");
                }
            }
            return Content(mensaje);
        }




        public ActionResult ActualizarZona(string txtCodzona, string txtDsczona, string txtCodubigeo, string ddlEstzona, string txtCoord)
        {
            /*           
             https://jsfiddle.net/3L140cg3/16/
             https://stackoverflow.com/questions/10013274/google-maps-user-editable-polygon-with-fixed-number-of-points
             */
            String mensaje = "";
            if (txtCodubigeo != null && txtDsczona != null && txtCoord != null)
            {
                ZonaBE be = new ZonaBE()
                {
                    codzona = txtCodzona,
                    dsczona = txtDsczona,
                    codubigeo = txtCodubigeo,
                    estzona = ddlEstzona
                };
                if (txtCodubigeo != "000000" && txtDsczona.Length > 0)
                {
                    String resultado = zonaBL.ActualizarZona(be);
                    if (resultado == "OK")
                    {
                        //Grabar el detalle
                        List<ZonaBE> lst = new List<ZonaBE>();
                        string[] coord = txtCoord.Split(';');
                        int id = 1;
                        foreach (string fila in coord)
                        {
                            if (fila != "")
                            {
                                lst.Add(new ZonaBE()
                                {
                                    codzona = txtCodzona,
                                    orden = id++,
                                    lat = Convert.ToDouble(fila.Split(',')[0].Replace(".",",")),
                                    lon = Convert.ToDouble(fila.Split(',')[1].Replace(".",","))
                                });
                            }
                        }
                        if (lst.Count > 0)
                        {
                            String res = "OK";// zonaBL.RegistrarDetZona(lst);
                            if (res == "OK")
                            {
                                mensaje = GenerarScript("Se ha actualizado correctamente.", 1, "Zona/MantenimientoZonas");
                            }
                            else
                            {
                                mensaje = GenerarScript(res, 0, "Zona/DetalleZona");
                            }
                        }

                        mensaje = GenerarScript("Se ha actualizado correctamente.", 1, "Zona/MantenimientoZonas");
                    }
                    else
                    {
                        mensaje = GenerarScript(resultado, 1, "Zona/DetalleZona");
                    }
                }
                else
                {
                    mensaje = GenerarScript("Debe completar todos los campos", 0, "Zona/DetalleZona");
                }
            }
            return Content(mensaje);
        }





        public ActionResult listarDepartamentos()
        {
            return View(ubigeoBL.listarDepartamentos());
        }
        public JsonResult listarProvincias(string ddlDepartamento)
        {
            //return View(ubigeoBL.listarProvincias(ddlDepartamento));
            return Json(ubigeoBL.listarProvincias(ddlDepartamento), JsonRequestBehavior.AllowGet);
        }
        public JsonResult listarDistritos(string ddlDepartamento, string ddlProvincia)
        {
            return Json(ubigeoBL.listarDistritos(ddlDepartamento, ddlProvincia), JsonRequestBehavior.AllowGet);
        }


        public ActionResult DibujarZonaJSON(String codzona)
        {
            return Json(zonaBL.DibujarZona(codzona), JsonRequestBehavior.AllowGet);
        }

        //Zonas asignadas
        
        public ActionResult ZonasAsignadas(string txtFchIni, string txtFchFin, string txtNombre, string ddlEstado)
        {
            txtNombre = txtNombre == null ? "" : txtNombre;
            txtFchIni = txtFchIni == null ? DateTime.Now.AddDays(1 - DateTime.Now.Day).ToString("dd/MM/yyyy") : txtFchIni;
            txtFchFin = txtFchFin == null ? DateTime.Now.AddDays(1).ToString("dd/MM/yyyy") : txtFchFin;
            ddlEstado = ddlEstado == null ? "0" : ddlEstado;
            SubzonaETBE param = new SubzonaETBE()
            {
                //dsczona = txtNombre.Trim(),
                fchinicio = txtFchIni,// Convert.ToDateTime(txtFchIni).ToString("yyyy-MM-dd"),
                fchfin = txtFchFin, //Convert.ToDateTime(txtFchFin).ToString("yyyy-MM-dd"),
                estsubzonaet = ddlEstado
            };
            return View(subzonaBL.SubzonasAsignadas(param));
        }

    }
}