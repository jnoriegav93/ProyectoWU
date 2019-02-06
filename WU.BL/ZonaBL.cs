using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.DAO;
using WU.BE;
namespace WU.BL
{
    public class ZonaBL
    {
        ZonaDAO zona = new ZonaDAO();
        public List<ZonaBE> ListarZonas()
        {
            return zona.ListarZonas();
        }
    }
}
