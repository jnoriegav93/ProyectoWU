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


        public bool AsignarETaSubzona(SubzonaETBE be)
        {
            List<SubzonaETBE> lstSubzona = new List<SubzonaETBE>();
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_et_ins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codet", be.codet);
                cmd.Parameters.AddWithValue("@codsubzona", be.codsubzona);
                cmd.Parameters.AddWithValue("@fchregistro", be.fchregistro);
                cmd.Parameters.AddWithValue("@estsubzonaet", be.estsubzonaet);
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
        


        public List<SubzonaETBE> SubzonasAsignadas(SubzonaETBE be)
        {
            List<SubzonaETBE> lstZona = new List<SubzonaETBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_et_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fchinicio", be.fchinicio);
                cmd.Parameters.AddWithValue("@fchfin", be.fchfin);
                cmd.Parameters.AddWithValue("@estsubzonaet", be.estsubzonaet);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    SubzonaETBE z = new SubzonaETBE();
                    z.cod_subzona_et = Convert.ToInt32(dr[0].ToString());
                    z.dscsubzona = dr[1].ToString();
                    z.apeet = dr[2].ToString();
                    z.nomet = dr[3].ToString();
                    z.fchregistro = Convert.ToDateTime(dr[4]);
                    z.estsubzonaet = dr[5].ToString();
                    lstZona.Add(z);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                lstZona.Add(new SubzonaETBE() { dscsubzona = ex.Message });
            }
            return lstZona;
        }


    }
}
