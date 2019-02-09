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

        public bool RegistrarSubzona(SubzonaBE sz)
        {
            return subzona.RegistrarSubzona(sz);
        }
    }
}
