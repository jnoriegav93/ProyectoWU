using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.ENTIDADES;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CARROS.DAO
{
    public class PaisDAO
    {
        public List<PaisE> ListarPaises()
        {
            List<PaisE> ListaP = new List<PaisE>();
            SqlConnection con = Conexion.cn();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("ListarPaisesSP", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    PaisE paisE = new PaisE();
                    paisE.PaisID = Convert.ToInt32(dr[0]);
                    paisE.Nombre = dr[1].ToString();
                    ListaP.Add(paisE);
                }con.Close();
            }
            catch(Exception E)
            { throw; }
            return ListaP;
        }
    }
}
