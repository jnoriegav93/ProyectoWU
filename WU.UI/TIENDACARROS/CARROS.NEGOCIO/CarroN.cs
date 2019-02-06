using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.DAO;
using CARROS.ENTIDADES;

namespace CARROS.NEGOCIO
{
    public class CarroN
    {
        CarroDAO carroDAO = new CarroDAO();
        public int InsertarCarro(CarroE carroE)
        {
            return carroDAO.InsertarCarro(carroE);
        }
        public List<CarroE> ListarCarros()
        {
            return carroDAO.ListarCarros();
        }
        public CarroE ObtenerCarro(int? CarroID)
        {
            return carroDAO.ObtenerCarro(CarroID);
        }
        public bool EliminarCarro(int CarroID)
        {
            return carroDAO.EliminarCarro(CarroID);
        }
    }
}
