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

        public String GenerarScript(String script)
        {
            return "<script language='javascript' type='text/javascript'>alert('" + script + "');</script>";
        }

        public ActionResult RegistrarSubzona(string txtDscsubzona, string txtCodzona, string txtCoord)
        {
            String mensaje = "";
            if (!String.IsNullOrEmpty(txtDscsubzona.Trim()) && !String.IsNullOrEmpty(txtCodzona.Trim()) && !String.IsNullOrEmpty(txtCoord.Trim()))
            {
                SubzonaBE be = new SubzonaBE()
                {
                    dscsubzona = txtDscsubzona,
                    codzona = txtCodzona
                };
                String resultado = subzonaBL.RegistrarSubzona(be);
                if (resultado == "OK")
                {
                    //Obtener el codsubzona generado para insertarlo en la tabla de coordenadas
                    String txtCodsubzona = (Convert.ToInt32(subzonaBL.ObtenerCodsubzona())-1).ToString();

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
                            mensaje = "Se registró correctamente la subzona.";
                        }
                        else
                        {
                            mensaje = "Error al registrar: no se encontraron las coordenadas.";
                        }
                    }

                }
                else
                {
                    mensaje = "Error en los datos de la subzona";
                }
            }
            return Json(mensaje, JsonRequestBehavior.AllowGet);
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
                                mensaje = "Se ha actualizado correctamente.";
                            }
                            else
                            {
                                mensaje = res;
                            }
                        }

                        mensaje = "Se ha actualizado correctamente.";
                    }
                    else
                    {
                        mensaje = resultado;
                    }
                }
                else
                {
                    mensaje = "Debe completar todos los campos";
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
            return Json(subzonaBL.DibujarSubzonas(codsubzona), JsonRequestBehavior.AllowGet);
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