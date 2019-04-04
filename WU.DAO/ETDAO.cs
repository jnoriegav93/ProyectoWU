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
    public class ETDAO
    {
        Conexion c = new Conexion();
        public List<ETBE> ListarET()
        {
            List<ETBE> lstET = new List<ETBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_et_ddl", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ETBE be = new ETBE();
                    be.codet = Convert.ToInt32(dr[0]);
                    be.nomet = dr[1].ToString();
                    be.apeet = dr[2].ToString();
                    lstET.Add(be);
                }
                con.Close();
                con.Dispose();
                lstET.Insert(0,new ETBE(){codet = 0,nomet = "-SIN ASIGNAR-"});
            }
            catch (Exception ex)
            {
                ETBE be = new ETBE();
                be.codet = 0;
                be.nomet = "-ERROR-";
                be.apeet = "";
                lstET.Add(be);
            }
            return lstET;
        }

        public ETBE ETAsignado(String codsubzona)
        {
            ETBE be = new ETBE();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_et_sz", con);
                cmd.Parameters.AddWithValue("@codsubzona", ((object)codsubzona) ?? '0');
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    be.codet = Convert.ToInt32(dr[0]);
                    be.nomet = dr[1].ToString();
                    be.fchinicio = dr[4].ToString();
                    be.fchfin = dr[5].ToString();
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                be = new ETBE();
                be.codet = 0;
                be.nomet = "-ERROR-";
                be.apeet = "";
            }
            return be;
        }


        public String ActualizarETAsignado(String codzona,String codsubzona, String dscsubzona, String codet, String finicio, String ffin)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_et_upd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", ((object)codzona) ?? '0');
                cmd.Parameters.AddWithValue("@codsubzona", ((object)codsubzona) ?? '0');
                cmd.Parameters.AddWithValue("@dscsubzona", ((object)dscsubzona) ?? "");
                cmd.Parameters.AddWithValue("@codet", ((object)codet) ?? '0');
                cmd.Parameters.AddWithValue("@fchinicio", ((object)finicio) ?? "");
                cmd.Parameters.AddWithValue("@fchfin", ((object)ffin) ?? "");
                cmd.ExecuteNonQuery();
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                return "Error al intentar actualizar: " + ex.Message.Replace("'", "''");
            }
            finally
            {
                con.Close();
            }
            return "OK";
        }
    }
}
