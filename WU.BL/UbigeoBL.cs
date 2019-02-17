using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.DAO;
using WU.BE;

namespace WU.BL
{
    public class UbigeoBL
    {
        UbigeoDAO dao = new UbigeoDAO();
        public List<UbigeoBE> listarDepartamentos()
        {
            return dao.listarDepartamentos();
        }
        public List<UbigeoBE> listarProvincias(String coddep)
        {
            return dao.listarProvincias(coddep);
        }
        public List<UbigeoBE> listarDistritos(String coddep, String codpro)
        {
            return dao.listarDistritos(coddep,codpro);
        }
    }
}
