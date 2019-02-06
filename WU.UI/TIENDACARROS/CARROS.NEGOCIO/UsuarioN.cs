using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.DAO;
using CARROS.ENTIDADES;

namespace CARROS.NEGOCIO
{
    public class UsuarioN
    {
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        public UsuarioE ValidarLogin(string user, string password)
        {
            return usuarioDAO.ValidarLogin(user,password);
        }
    }
}
