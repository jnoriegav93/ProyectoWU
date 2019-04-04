using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WU.BE
{
    public class SubzonaBE
    {
        public String codsubzona { get; set; }
        public String codzona { get; set; }
        public String coordenadas { get; set; }
        public String dscsubzona { get; set; }
        public DateTime fchregistro { get; set; }
        public String estsubzona { get; set; }

        public string fchinicio { get; set; } //Filtro de búsqueda
        public string fchfin { get; set; } // Filtro de búsqueda
        public String dsczona { get; set; } // Mantenimiento
        public String estzona { get; set; } // Mantenimiento

        //detalle
        public int orden { get; set; }
        public double lat { get; set; }
        public double lon { get; set; }
    }
}
