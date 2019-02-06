using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.ENTIDADES;
using CARROS.DAO;

namespace CARROS.NEGOCIO
{
    public class TransmisionN
    {
        TransmisionDAO transmisionDAO = new TransmisionDAO();
        public List<TransmisionE> ListarTransmisiones()
        {
            return transmisionDAO.ListarTransmisiones();
        }
    }
}
