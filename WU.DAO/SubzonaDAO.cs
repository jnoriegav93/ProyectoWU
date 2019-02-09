using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WU.BE;

namespace WU.DAO
{
    public class SubzonaDAO
    {

        public bool RegistrarSubzona(SubzonaBE be)
        {
            List<SubzonaBE> lstSubzona = new List<SubzonaBE>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_ins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codsubzona", be.codsubzona);
                cmd.Parameters.AddWithValue("@codzona", be.codzona);
                cmd.Parameters.AddWithValue("@coordenadas", be.coordenadas);
                cmd.Parameters.AddWithValue("@fch_registro", be.fch_registro);
                cmd.Parameters.AddWithValue("@estsubzona", be.estsubzona);

                cmd.ExecuteNonQuery();
                return true;

            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
