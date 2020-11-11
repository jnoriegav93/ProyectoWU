using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WU.BL;
using WU.BE;
using RestSharp;

namespace WU.UI.Controllers
{
    public class ZonaController : Controller
    {
        public ZonaBL zonaBL = new ZonaBL();
        public SubzonaBL subzonaBL = new SubzonaBL();
        public LocalBL localBL = new LocalBL();
        public ETBL etBL = new ETBL();
        public UbigeoBL ubigeoBL = new UbigeoBL();

        public class claseLlenarMapa
        {
            public List<ZonaBE> lstZona { get; set; }
            public List<List<ZonaBE>> lstZonas { get; set; }
            public List<ZonaBE> lstZonaDDL { get; set; }
            public List<List<SubzonaBE>> lstSubzonas { get; set; }
            public List<SubzonaBE> lstSubzonaDDL { get; set; }
            public List<LocalBE> lstLocales { get; set; }
        }

        public ActionResult ListarET()
        {
            return View(etBL.ListarET());
        }
        public ActionResult RegistrarZona(string txtCodzona, string ddlDepartamento, string ddlProvincia, string ddlDistrito,
                                          string txtDsczona, string txtFchregistro, string ddlEstzona, string txtCoord)
        {
            String mensaje = "";
            String codzona = "";
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
                        if (txtCodzona == "0")
                        {
                            codzona = (Convert.ToInt32(zonaBL.ObtenerCodzona()) - 1).ToString();
                        }
                        List<ZonaBE> lst = new List<ZonaBE>();
                        string[] coord = txtCoord.Split(';');
                        int id = 1;
                        foreach (string fila in coord)
                        {
                            if (fila != "")
                            {
                                lst.Add(new ZonaBE()
                                {
                                    codzona = codzona,
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
                                mensaje = "Se ha registrado correctamente.";
                            }
                            else
                            {
                                mensaje = res;
                            }
                        }

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
            return Json(mensaje, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ActualizarZona(string txtCodzona, string txtDsczona, string txtCodubigeo, string ddlEstzona, string txtCoord)
        {
            /*           
             https://jsfiddle.net/3L140cg3/16/
             https://stackoverflow.com/questions/10013274/google-maps-user-editable-polygon-with-fixed-number-of-points
             */
            String mensaje = "";
            if ( !String.IsNullOrEmpty(txtCodubigeo) && !String.IsNullOrEmpty(txtDsczona))
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
                    mensaje = "Se ha actualizado la información correctamente.";
                    if (resultado == "OK" && !String.IsNullOrEmpty(txtCoord))
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
                            String res = zonaBL.ActualizarDetZona(lst);
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
            else
            {
                mensaje = "Error";
            }
            //return Content(mensaje);

            return Json(mensaje, JsonRequestBehavior.AllowGet);
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
        public ActionResult AsignarSubzona()
        {
            var model = new ZonaController();
            return View(model);

        }

        public ActionResult BuscarZona(string ddlZona, string cbMoneyTransfer, string cbPagoServicios)
        {
            ddlZona = ddlZona == null ? "0" : ddlZona;
            cbMoneyTransfer = cbMoneyTransfer == null ? "0" : cbMoneyTransfer == "false" ? "0" : "1";
            cbPagoServicios = cbPagoServicios == null ? "0" : cbPagoServicios == "false" ? "0" : "1";
            ZonaBE param = new ZonaBE()
            {
                codzona = ddlZona,
                moneytransfer = cbMoneyTransfer,
                pagoservicios = cbPagoServicios
            };
            claseLlenarMapa clase = new claseLlenarMapa()
            {
                lstZona = zonaBL.DibujarZona(param.codzona),
                lstSubzonas = subzonaBL.DibujarSubzonas(param.codzona),
                lstSubzonaDDL = subzonaBL.CargarSubzonas(param.codzona),
                lstLocales = localBL.CargarLocales(param)
            };
            return Json(clase, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ETAsignado(String codsubzona)
        {
            return Json(etBL.ETAsignado(codsubzona), JsonRequestBehavior.AllowGet);
        }
        public ActionResult ActualizarETAsignado(String codsubzona, String codet, String fecini, String fecfin)
        {
            if (codsubzona == "0")
            {
                codsubzona = (Convert.ToInt32(subzonaBL.ObtenerCodsubzona()) - 1).ToString();
            }
            return Json(etBL.ActualizarETAsignado(codsubzona, codet, fecini, fecfin), JsonRequestBehavior.AllowGet);
        }

        bool exec = false;

        public ActionResult PruebaIA(String mes,
            String ubigeo,
            String rubro,
            String bn,
            String competencia,
            String concurrencia,
            String meta,
            String ia_wu)
        {

            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/2f89f5999a2e4136b65076490a24c365/services/ed597ee40c1b47ad9b085aefb501fb88/execute?api-version=2.0&details=true");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Postman-Token", "e4c71b46-5744-4cac-804c-a069f632dc05");
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Authorization", "Bearer oukokAOaGik6TfRjKhs6ci68IjFm1/vfjxPuuOxc89R0qHcEbwJXZmC6nyW3m1F0RzmH4rjtYSU1aggSuHcOlg==");
            request.AddHeader("Content-Type", "application/json");
            //request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"MES\",\r\n        \"UBIGEO\",\r\n        \"RUBRO\",\r\n        \"BN\",\r\n        \"COMPETENCIA\",\r\n        \"CONCURRENCIA\",\r\n        \"META\",\r\n        \"IA_WU\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"4\",\r\n          \"150101\",\r\n          \"value\",\r\n          \"value\",\r\n          \"0\",\r\n          \"value\",\r\n          \"0\",\r\n          \"0\"\r\n        ],\r\n        [\r\n          \"0\",\r\n          \"0\",\r\n          \"value\",\r\n          \"value\",\r\n          \"0\",\r\n          \"value\",\r\n          \"0\",\r\n          \"0\"\r\n        ]\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);

            request.AddParameter("undefined", "{\r\n" +
                                                "  \"Inputs\": {\r\n" +
                                                "    \"input1\": {\r\n" +
                                                "      \"ColumnNames\": [\r\n" +
                                                "        \"MES\",\r\n" +
                                                "        \"UBIGEO\",\r\n" +
                                                "        \"RUBRO\",\r\n" +
                                                "        \"BN\",\r\n" +
                                                "        \"COMPETENCIA\",\r\n" +
                                                "        \"CONCURRENCIA\",\r\n" +
                                                "        \"META\",\r\n" +
                                                "        \"IA_WU\"\r\n" +
                                                "      ],\r\n" +
                                                "      \"Values\": [\r\n" +
                                                "        [\r\n" +
                                                "          \"" + mes + "\",\r\n" +
                                                "          \"" + ubigeo + "\",\r\n" +
                                                "          \"" + rubro + "\",\r\n" +
                                                "          \"" + bn + "\",\r\n" +
                                                "          \"" + competencia + "\",\r\n" +
                                                "          \"" + concurrencia + "\",\r\n" +
                                                "          \"" + meta + "\",\r\n" +
                                                "          \"" + ia_wu + "\"\r\n" +
                                                "        ]\r\n" +
                                                "      ]\r\n" +
                                                "    }\r\n" +
                                                "  },\r\n" +
                                                "  \"GlobalParameters\": {}\r\n" +
                                                "}", ParameterType.RequestBody);


            IRestResponse response = null;
            if (!exec)
            {
                response = client.Execute(request);
                exec = true;
            }
            return Json(response.Content, JsonRequestBehavior.AllowGet);
        }

        //

        public ActionResult MantenimientoZonas()
        {
            return View(new ZonaController());
        }

        public ActionResult CargarZonas()
        {
            claseLlenarMapa c = new claseLlenarMapa()
            {
                lstZonas = zonaBL.DibujarZonas(),
                lstZonaDDL = zonaBL.CargarZonas(),
            };
            return Json(c, JsonRequestBehavior.AllowGet);
        }

        public ActionResult CargarDetZona(String codzona)
        {
            return Json(zonaBL.CargarDetalleZona(codzona), JsonRequestBehavior.AllowGet);
        }



        public ActionResult SubzonasAsignadas()
        {
            return View(new ZonaController());
        }



        public ActionResult BuscarSZAsignadas(String fchIni, String fchFin)
        {
            return Json(zonaBL.BuscarSZAsignadas(fchIni, fchFin), JsonRequestBehavior.AllowGet);
        }

        public ActionResult DibujarSubzonasAsignadas(String fchIni, String fchFin)
        {
            return Json(zonaBL.DibujarSubzonasAsignadas(fchIni, fchFin), JsonRequestBehavior.AllowGet);
        }



        public ActionResult centrarUbigeo(String codubigeo)
        {
            return Json(ubigeoBL.centrarUbigeo(codubigeo), JsonRequestBehavior.AllowGet);
        }

        public ActionResult eliminarSZ(String codsubzona, String dscsubzona, String estsubzona)
        {
            SubzonaBE be = new SubzonaBE()
            {
                codsubzona = codsubzona,
                dscsubzona = dscsubzona,
                estsubzona = estsubzona
            };
            return Json(subzonaBL.ActualizarSubzona(be), JsonRequestBehavior.AllowGet);
        }

    }
}