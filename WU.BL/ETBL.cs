using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;
using WU.DAO;

namespace WU.BL
{
    public class ETBL
    {
        ETDAO dao = new ETDAO();
        public List<ETBE> ListarET()
        {
            return dao.ListarET();
        }

        public ETBE ETAsignado(String codsubzona)
        {
            return dao.ETAsignado(codsubzona);
        }
        public String ActualizarETAsignado(String codsubzona, String codet, String fecini, String fecfin)
        {
            return dao.ActualizarETAsignado(codsubzona, codet, fecini, fecfin);
        }
    }
}
