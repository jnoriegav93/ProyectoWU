using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WU.BE
{
    public class ZonaBE
    {
        public String codzona { get; set; }
        public string codubigeo { get; set; }
        public string dsczona { get; set; }
        public string estzona { get; set; }

        public DateTime fchregistro { get; set; }

        public string fchinicio { get; set; } //Filtro de búsqueda
        public string fchfin { get; set; } // Filtro de búsqueda
        public string dscubigeo { get; set; } // Descripción del ubigeo

        //detalle
        public int orden { get; set; }
        public String lat { get; set; }
        public String lon { get; set; }
    }
}
