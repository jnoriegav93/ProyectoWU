using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.DAO;
using CARROS.ENTIDADES;

namespace CARROS.NEGOCIO
{
    public class FotoN
    {
        FotoDAO fotoDAO = new FotoDAO();
        public int InsertarFoto(FotoE fotoE)
        {
            return fotoDAO.InsertarFoto(fotoE);
        }
        public bool EliminarFoto(int CarroID)
        {
            return fotoDAO.EliminarFoto(CarroID);
        }
    }
}
