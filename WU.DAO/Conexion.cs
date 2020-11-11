using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WU.DAO
{
    public class Conexion
    {
        public SqlConnection AbrirConexion()
        { /*
            SqlConnection resultado = new SqlConnection();
            SqlConnection con = new SqlConnection();
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_ddl", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                resultado = con;
            }
            catch (Exception ex)
            {
                try
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION2"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_tb_zona_ddl", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataReader dr = cmd.ExecuteReader();
                    resultado = con;
                }
                catch (Exception ex2)
                {
                }
            }
            con.Close();      
            return resultado;
            */
            return new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
        }

        public String ProbarConexion()
        {
            String resultado = "";
            try
            {
                SqlConnection con = AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_ddl", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                resultado = dr.HasRows ? "correcto" : "sin resultado";
                con.Close();
            }
            catch (Exception ex)
            {
                resultado = ex.Message;
            }
            return resultado;
        }

    }
}
