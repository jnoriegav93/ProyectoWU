using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CARROS.ENTIDADES
{
    public class CarroE
    {
        public int CarroID { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Placa { get; set; }
        public string Anio { get; set; }
        public decimal Precio { get; set; }
        public string Color { get; set; }
        public int NPuertas { get; set; }

        //SE ACCEDE DE ESTA FORMA A LAS OTRAS CLASES
        //PORQUE LAS TABLAS ESTÁN RELACIONADAS
        //Y SOLO MUESTRAN FK
        public CombustibleE combustibleE;
        public TransmisionE transmisionE;
        public PaisE paisE;
        public FotoE fotoE;
        public CarroE()
        {
            combustibleE = new CombustibleE();
            transmisionE = new TransmisionE();
            paisE = new PaisE();
            fotoE = new FotoE();
        }
    }
}
