using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;
using WU.DAO;

namespace WU.BL
{
    public class SubzonaBL
    {
        public SubzonaDAO subzona = new SubzonaDAO();
        public String ProbarConexion()
        {
            return (new Conexion()).ProbarConexion();
        }
        public List<SubzonaBE> CargarSubzonas(String codzona)
        {
            return subzona.CargarSubzonas(codzona);
        }
        public List<SubzonaBE> ListarSubzonas(SubzonaBE param)
        {
            return subzona.ListarSubzonas(param);
        }
        public SubzonaBE CargarDetalleSubzona(String codsubzona)
        {
            return subzona.CargarDetalleSubzona(codsubzona);
        }
        public List<List<SubzonaBE>> DibujarSubzonas(String codzona)
        {
            return subzona.DibujarSubzonas(codzona);
        }
        public String RegistrarSubzona(SubzonaBE sz)
        {
            return subzona.RegistrarSubzona(sz);
        }

        public String RegistrarDetSubzona(List<SubzonaBE> lst)
        {
            return subzona.RegistrarDetSubzona(lst);
        }

        public String ObtenerCodsubzona()
        {
            return subzona.ObtenerCodsubzona();
        }

        public String ActualizarSubzona(SubzonaBE be)
        {
            return subzona.ActualizarSubzona(be);
        }

        //tb_subzona_et

        public bool AsignarETaSubzona(SubzonaETBE sz)
        {
            return subzona.AsignarETaSubzona(sz);
        }

        public List<SubzonaETBE> SubzonasAsignadas(SubzonaETBE be)
        {
            return subzona.SubzonasAsignadas(be);
        }

    }
}
