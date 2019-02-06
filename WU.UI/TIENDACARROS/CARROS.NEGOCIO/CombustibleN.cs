using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.ENTIDADES;
using CARROS.DAO;

namespace CARROS.NEGOCIO
{
    public class CombustibleN
    {
        CombustibleDAO combustibleDAO = new CombustibleDAO();
        public List<CombustibleE> ListarCombustibles()
        {
            return combustibleDAO.ListarCombustibles();
        }
    }
}
