using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using WU.BE;

namespace WU.DAO
{
    public class ZonaDAO
    {
        public List<ZonaBE> CargarZonas()
        {
            List<ZonaBE> lstZona = new List<ZonaBE>();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_ddl", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.codzona = dr[0].ToString();
                    z.dsczona = dr[1].ToString();
                    lstZona.Add(z);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return lstZona;
        }

        public List<ZonaBE> ListarZonas( ZonaBE be)
        {
            List<ZonaBE> lstZona = new List<ZonaBE>();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", be.codzona);
                cmd.Parameters.AddWithValue("@codubigeo", be.codubigeo);
                cmd.Parameters.AddWithValue("@dsczona", be.dsczona);
                cmd.Parameters.AddWithValue("@estzona", be.estzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.codzona = dr[0].ToString();
                    z.dsczona = dr[1].ToString();
                    z.estzona = dr[2].ToString();
                    z.codubigeo = dr[3].ToString();
                    lstZona.Add(z);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return lstZona;
        }

        public ZonaBE DetalleZona(int codzona)
        {
            ZonaBE z = new ZonaBE();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_det", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", codzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    z = new ZonaBE();
                    z.codzona = dr[0].ToString();
                    z.dsczona = dr[1].ToString();
                    z.estzona = dr[2].ToString();
                    z.codubigeo = dr[3].ToString();
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return z;
        }
    }
}
