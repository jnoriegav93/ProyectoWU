using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;
using WU.DAO;

namespace WU.BL
{
    public class CompetenciaBL
    {
        CompetenciaDAO dao = new CompetenciaDAO();
        public List<CompetenciaBE> MostrarCompetencia()
        {
            return dao.MostrarCompetencia();
        }
    }
}
