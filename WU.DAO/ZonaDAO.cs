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
        Conexion c = new Conexion();
        SqlConnection con = new SqlConnection();        
        public List<ZonaBE> CargarZonas()
        {
            List<ZonaBE> lstZona = new List<ZonaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
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
                lstZona.Insert(0, new ZonaBE() { codzona = "0", dsczona = "-SELECCIONE-" });
            }
            catch (Exception ex)
            {
                ZonaBE z = new ZonaBE();
                z.codzona = "0";
                z.dsczona = "-ERROR-";
                lstZona.Add(z);
            }
            return lstZona;
        }

        public List<ZonaBE> ListarZonas(ZonaBE be)
        {
            List<ZonaBE> lstZona = new List<ZonaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", ((object)be.codzona) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@codubigeo", ((object)be.codubigeo) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@dsczona", ((object)be.dsczona) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@fchinicio", be.fchinicio);
                cmd.Parameters.AddWithValue("@fchfin", be.fchfin);
                cmd.Parameters.AddWithValue("@estzona", be.estzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.codzona = dr[0].ToString();
                    z.codubigeo = dr[1].ToString();
                    z.dscubigeo = dr[2].ToString();
                    z.dsczona = dr[3].ToString();
                    z.fchregistro = Convert.ToDateTime(dr[4]);
                    z.estzona = dr[5].ToString();
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

        public ZonaBE CargarDetalleZona(String codzona)
        {
            ZonaBE z = new ZonaBE();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_det", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", codzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    z = new ZonaBE();
                    z.codzona = dr[0].ToString();
                    z.fchregistro = Convert.ToDateTime(dr[1]);
                    z.estzona = dr[2].ToString();
                    z.dsczona = dr[3].ToString();
                    z.codubigeo = dr[4].ToString();
                    z.dscubigeo = dr[5].ToString();
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
