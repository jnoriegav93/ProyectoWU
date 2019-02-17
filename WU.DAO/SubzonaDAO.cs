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
        Conexion c = new Conexion();
        public bool RegistrarSubzona(SubzonaBE be)
        {
            List<SubzonaBE> lstSubzona = new List<SubzonaBE>();
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_ins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codsubzona", be.codsubzona);
                cmd.Parameters.AddWithValue("@codzona", be.codzona);
                cmd.Parameters.AddWithValue("@nomsubzona", be.nomsubzona);
                cmd.Parameters.AddWithValue("@coordenadas", be.coordenadas);
                cmd.Parameters.AddWithValue("@fchregistro", be.fchregistro);
                cmd.Parameters.AddWithValue("@estsubzona", be.estsubzona);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
            return true;
        }
    }
}
