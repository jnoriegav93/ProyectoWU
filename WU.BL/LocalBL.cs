using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;
using WU.DAO;

namespace WU.BL
{
    public class LocalBL
    {
        LocalDAO dao = new LocalDAO();

        public String ProbarConexion()
        {
            return (new Conexion()).ProbarConexion();
        }

        public List<LocalBE> CargarLocales(ZonaBE param)
        {
            return dao.CargarLocales(param);
        }
    }
}
