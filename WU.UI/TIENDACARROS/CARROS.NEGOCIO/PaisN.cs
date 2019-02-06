using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.DAO;
using CARROS.ENTIDADES;

namespace CARROS.NEGOCIO
{    
    public class PaisN
    {
        PaisDAO paisDAO = new PaisDAO();
        public List<PaisE> ListarPaises()
        {
            return paisDAO.ListarPaises();
        }
    }
}
