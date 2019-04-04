using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WU.BL;
using WU.BE;

namespace WU.UI.Controllers
{
    public class SubzonaController : Controller
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
        public ActionResult CargarSubzonas()
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

                    mensaje = GenerarScript("ASIGNADO", 1, "Subzona/AsignarSubzona");
                }
                else
                {
                    mensaje = GenerarScript("NO ASIGNADO", 0, "Subzona/AsignarSubzona");
                }
            }
            else
            {
                mensaje = GenerarScript("Debe completar todos los campos", 0, "Subzona/AsignarSubzona");
            }
            return Content(mensaje);
        }

        public String GenerarScript(String script, int redir, String ubicacion)
        {
            return "<script language='javascript' type='text/javascript'>alert('" + script + "');" + (redir == 1 ? " window.location.href='/" + ubicacion + "';</script>" : "");
        }

        public ActionResult MantenimientoSubzonas(string txtFchIni, string txtFchFin, string txtNombre, string ddlEstado)
        {
            txtNombre = txtNombre == null ? "" : txtNombre;
            txtFchIni = txtFchIni == null ? DateTime.Now.AddDays(1 - DateTime.Now.Day).ToString("dd/MM/yyyy") : txtFchIni;
            txtFchFin = txtFchFin == null ? DateTime.Now.AddDays(1).ToString("dd/MM/yyyy") : txtFchFin;
            ddlEstado = ddlEstado == null ? "0" : ddlEstado;
            SubzonaBE param = new SubzonaBE()
            {
                dscsubzona = txtNombre.Trim(),
                fchinicio = txtFchIni,// Convert.ToDateTime(txtFchIni).ToString("yyyy-MM-dd"),
                fchfin = txtFchFin, //Convert.ToDateTime(txtFchFin).ToString("yyyy-MM-dd"),
                estsubzona = ddlEstado
            };
            return View(subzonaBL.ListarSubzonas(param));
        }

        public ActionResult DetalleSubzona()
        {
            return View(new SubzonaController());
        }
        public ActionResult CargarDetalleZona(String codsubzona)
        {
            return View(subzonaBL.CargarDetalleSubzona(codsubzona));
        }

        public ActionResult DibujarSubzona(String codsubzona)
        {
            return View(subzonaBL.DibujarSubzona(codsubzona));
        }

        public ActionResult NuevaZona()
        {
            return View(new SubzonaController());
        }

        public ActionResult ObtenerCodsubzona()
        {
            return View(subzonaBL.ObtenerCodsubzona());
        }

        public ActionResult RegistrarSubzona(string txtCodsubzona, string txtDscsubzona, string txtCodzona, string txtFchregistro, string ddlEstsubzona, string txtCoord)
        {
            String mensaje = "";
            if (txtDscsubzona != null && txtFchregistro != null)
            {
                SubzonaBE be = new SubzonaBE()
                {
                    dscsubzona = txtDscsubzona,
                    codzona = txtCodzona,
                    fchregistro = Convert.ToDateTime(txtFchregistro),
                    estsubzona = "0"
                };
                String resultado = subzonaBL.RegistrarSubzona(be);
                if (resultado == "OK")
                {
                    //Grabar el detalle
                    List<SubzonaBE> lst = new List<SubzonaBE>();
                    string[] coord = txtCoord.Split(';');
                    int id = 1;
                    foreach (string fila in coord)
                    {
                        if (fila != "")
                        {
                            lst.Add(new SubzonaBE()
                            {
                                codsubzona = txtCodsubzona,
                                orden = id++,
                                lat = Convert.ToDouble(fila.Split(',')[0]),
                                lon = Convert.ToDouble(fila.Split(',')[1])
                            });
                        }
                    }
                    if (lst.Count > 0)
                    {
                        String res = subzonaBL.RegistrarDetSubzona(lst);
                        if (res == "OK")
                        {
                            mensaje = GenerarScript("Se ha registrado correctamente.", 1, "Subzona/MantenimientoSubzonas");
                        }
                        else
                        {
                            mensaje = GenerarScript(res, 0, "Subzona/NuevaSubzona");
                        }
                    }

                }
                else
                {
                    mensaje = GenerarScript(resultado, 0, "Subzona/NuevaSubzona");
                }
            }
            return Content(mensaje);
        }




        public ActionResult ActualizarSubzona(string txtCodSubzona, string txtCodzona, string txtDscSubzona, string ddlEstsubzona, string txtCoord)
        {
            /*           
             https://jsfiddle.net/3L140cg3/16/
             https://stackoverflow.com/questions/10013274/google-maps-user-editable-polygon-with-fixed-number-of-points
             */
            String mensaje = "";
            if ( txtDscSubzona != null && txtCoord != null)
            {
                SubzonaBE be = new SubzonaBE()
                {
                    codsubzona = txtCodSubzona,
                    codzona = txtCodzona,
                    dscsubzona = txtDscSubzona,
                    estsubzona = ddlEstsubzona
                };
                if (txtDscSubzona.Length > 0)
                {
                    String resultado = subzonaBL.ActualizarSubzona(be);
                    if (resultado == "OK")
                    {
                        //Grabar el detalle
                        List<SubzonaBE> lst = new List<SubzonaBE>();
                        string[] coord = txtCoord.Split(';');
                        int id = 1;
                        foreach (string fila in coord)
                        {
                            if (fila != "")
                            {
                                lst.Add(new SubzonaBE()
                                {
                                    codsubzona = txtCodSubzona,
                                    orden = id++,
                                    lat = Convert.ToDouble(fila.Split(',')[0].Replace(".", ",")),
                                    lon = Convert.ToDouble(fila.Split(',')[1].Replace(".", ","))
                                });
                            }
                        }
                        if (lst.Count > 0)
                        {
                            String res = "OK";// zonaBL.RegistrarDetZona(lst);
                            if (res == "OK")
                            {
                                mensaje = GenerarScript("Se ha actualizado correctamente.", 1, "Subzona/MantenimientoSubzonas");
                            }
                            else
                            {
                                mensaje = GenerarScript(res, 0, "Subzona/DetalleSubzona");
                            }
                        }

                        mensaje = GenerarScript("Se ha actualizado correctamente.", 1, "Subzona/MantenimientoSubzonas");
                    }
                    else
                    {
                        mensaje = GenerarScript(resultado, 1, "Subzona/DetalleSubzona");
                    }
                }
                else
                {
                    mensaje = GenerarScript("Debe completar todos los campos", 0, "Subzona/DetalleSubzona");
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


        public ActionResult DibujarSubzonaJSON(String codsubzona)
        {
            return Json(subzonaBL.DibujarSubzona(codsubzona), JsonRequestBehavior.AllowGet);
        }

        //Zonas asignadas

        public ActionResult SubzonasAsignadas(string txtFchIni, string txtFchFin, string txtNombre, string ddlEstado)
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