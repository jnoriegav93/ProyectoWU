using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;

namespace WU.DAO
{
    public class CompetenciaDAO
    {
        Conexion c = new Conexion();

        public List<CompetenciaBE> MostrarCompetencia()
        {
            List<CompetenciaBE> lst = new List<CompetenciaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_competencia_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@codzona", "%");
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    CompetenciaBE z = new CompetenciaBE();
                    z.codcompetencia = Convert.ToInt32(dr[0]);
                    z.razonsocial = dr[1].ToString();
                    z.lat = Convert.ToDouble(dr[2].ToString().Replace(",", "."));
                    z.lon = Convert.ToDouble(dr[3].ToString().Replace(",", "."));
                    lst.Add(z);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return lst;
        }
    }
}
