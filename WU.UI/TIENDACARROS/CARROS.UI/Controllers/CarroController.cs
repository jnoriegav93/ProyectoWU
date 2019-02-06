using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CARROS.ENTIDADES;
using CARROS.NEGOCIO;

using System.IO;

namespace CARROS.UI.Controllers
{
    public class CarroController : Controller
    {
        CarroE carroE = new CarroE();
        CarroN carroN = new CarroN();
        FotoE fotoE = new FotoE();
        FotoN fotoN = new FotoN();
        TransmisionE transmisionE = new TransmisionE();
        TransmisionN transmisionN = new TransmisionN();
        PaisE paisE = new PaisE();
        PaisN paisN = new PaisN();
        CombustibleE combustibleE = new CombustibleE();
        CombustibleN combustibleN = new CombustibleN();
        //CREO UNA CLASE QUE GUARDE LOS 3 OBJETOS
        //QUE NECESITO PARA MOSTRAR EN UNO SOLO
        //EN LA VISTA, PORQUE LA VISTA SOLO PUEDE MOSTRAR
        //UN MODELO U OBJETO
        public class GrupoPTC
        {
            public CarroE carE = new CarroE();
            public CarroN carN = new CarroN();
            public PaisN pN=new PaisN();
            public CombustibleN cN = new CombustibleN();
            public TransmisionN tN = new TransmisionN();            
        }
        public GrupoPTC grupoPTC = new GrupoPTC();

        // GET: Carro
        public ActionResult Index()
        {
            //UNA ACCIÓN ES POR EJEMPLO
            //UNA VISTA
            return View();
            //UNA ACCIÓN PUEDE SER CUALQUIER
            //DATO QUE YO DESEE
        }
        [Route ("Carros")]
        public ActionResult ListarCarros()
        {
            return View(carroN.ListarCarros());
        }

        public ActionResult RegistrarCarro()
        {//SOLAMENTE ES UNA VISA DONDE LLENO DATOS A
            //REGISTRAR
            return View(grupoPTC);
        }

        public ActionResult InsertarCarro(string txtMarca,
                                          string txtModelo,
                                          string txtAnio,
                                          string txtColor,
                                          string txtPlaca,
                                          string txtNPuertas,
                                          string txtPrecio,
                                          int CombustibleID,
                                          int PaisID, int TransmisionID,
                                          HttpPostedFileBase fileFoto)
        {//ESTE ACTIONRESULT ES EL QUE REALEMNTE INSERTA
            //LOS DATOS QUE VIENEN DE LA VISTA
            //RegistrasCarro
            string mensaje = "";
            carroE.Marca = txtMarca;
            carroE.Modelo = txtModelo;
            carroE.Placa = txtPlaca;
            carroE.NPuertas = Convert.ToInt32(txtNPuertas);
            carroE.Precio = Convert.ToDecimal(txtPrecio);
            carroE.Color = txtColor;
            carroE.Anio = txtAnio;
            carroE.paisE.PaisID = PaisID;
            carroE.combustibleE.CombustibleID=CombustibleID;
            carroE.transmisionE.TransmisionID=TransmisionID;            
            int CarroID = carroN.InsertarCarro(carroE);
            if (CarroID > 0)
            {
                fotoE.CarroID = CarroID;
                string url = "/Fotos/" + fileFoto.FileName;
                fotoE.URL = url;
                string path;
                path = Path.Combine(Server.MapPath("/Fotos"),
                    System.IO.Path.GetFileName(fileFoto.FileName));
                fileFoto.SaveAs(path);
                if(fotoN.InsertarFoto(fotoE)>0)

                mensaje = "<script language='javascript'" +
                          "type='text/javascript'>alert('INSERTADO');" +
                          "window.location.href='/Carro/ListarCarros';" +
                          "</script>";
            }
             
            else mensaje = "<script language='javascript'" +
                          "type='text/javascript'>alert('NO INSERTADO');" +
                          "window.location.href='/Carro/RegistrarCarro';" +
                          "</script>";
            return Content(mensaje);
        }

        [Route("carros/{PCarroID}")]
        public ActionResult DetalleCarro()
        {//BUSCAR CARRO POR ID
            //CARROE, COMBUS_E, PAIS_E, TRANSM_E
            //carroE = carroN.ObtenerCarro(PCarroID);
            //grupoPTC.carN.ObtenerCarro(PCarroID);
            //carroE = carroN.ObtenerCarro(PCarroID);
            return View(grupoPTC);
        }

        public ActionResult EliminarCarro(int CarroID)
        {
            string mensaje = "";
            if (fotoN.EliminarFoto(CarroID))
            {
                if (carroN.EliminarCarro(CarroID))
                    mensaje = "<script language='javascript'" +
                          "type='text/javascript'>alert('BORRADO');" +
                          "window.location.href='/Carros';" +
                          "</script>";
                else
                    mensaje = "<script language='javascript'" +
                          "type='text/javascript'>alert('NO BORRADO');" +
                          "window.location.href='/Carros';" +
                          "</script>";
            }
            else
                mensaje = "<script language='javascript'" +
                          "type='text/javascript'>alert('NO BORRADO');" +
                          "window.location.href='/Carros';" +
                          "</script>";
            return Content(mensaje);
        }

        public ActionResult BuscarCarro(int? txtCarroID)
        {
            return View(carroN.ObtenerCarro(txtCarroID));
        }

        public ActionResult Login()
        {
            return View();
        }

        public string Saludito()
        {
            return "HABLA CAUSA";
        }

        public DateTime FechaActual()
        {
            return DateTime.Now;
        }
    }
}