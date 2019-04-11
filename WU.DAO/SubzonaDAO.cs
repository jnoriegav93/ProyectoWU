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

        public List<SubzonaBE> CargarSubzonas(String codzona)
        {
            List<SubzonaBE> lstSubzona = new List<SubzonaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_ddl", con);
                cmd.Parameters.AddWithValue("@codzona", ((object)codzona) ?? DBNull.Value);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    SubzonaBE z = new SubzonaBE();
                    z.codsubzona = dr[0].ToString();
                    z.dscsubzona = dr[1].ToString();
                    lstSubzona.Add(z);
                }
                con.Close();
                con.Dispose();
                lstSubzona.Insert(0, new SubzonaBE() { codsubzona = "0", dscsubzona = "-NUEVA ZONA-" });
            }
            catch (Exception ex)
            {
                SubzonaBE z = new SubzonaBE();
                z.codsubzona = "0";
                z.dscsubzona = "-ERROR-";
                lstSubzona.Add(z);
            }
            return lstSubzona;
        }


        public List<SubzonaBE> ListarSubzonas(SubzonaBE be)
        {
            List<SubzonaBE> lstSubzona = new List<SubzonaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codsubzona", ((object)be.codsubzona) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@dscsubzona", ((object)be.dscsubzona) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@fchinicio", be.fchinicio);
                cmd.Parameters.AddWithValue("@fchfin", be.fchfin);
                cmd.Parameters.AddWithValue("@@estsubzona", be.estsubzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    SubzonaBE z = new SubzonaBE();
                    z.codzona = dr[0].ToString();
                    z.dsczona = dr[1].ToString();
                    z.estzona = dr[2].ToString();
                    z.codsubzona = dr[3].ToString();
                    z.dscsubzona = dr[4].ToString();
                    z.fchregistro = Convert.ToDateTime(dr[4]);
                    z.estsubzona = dr[5].ToString();
                    lstSubzona.Add(z);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                lstSubzona.Add(new SubzonaBE() { dsczona = ex.Message });
            }
            return lstSubzona;
        }

        public SubzonaBE CargarDetalleSubzona(String codsubzona)
        {
            SubzonaBE z = new SubzonaBE();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_det", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codsubzona", codsubzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    z = new SubzonaBE();
                    z.codzona = dr[0].ToString();
                    z.dsczona = dr[1].ToString();
                    z.codsubzona = dr[2].ToString();
                    z.dscsubzona = dr[3].ToString();
                    z.fchregistro = Convert.ToDateTime(dr[4]);
                    z.estsubzona = dr[5].ToString();
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return z;
        }

        public List<List<SubzonaBE>> DibujarSubzonas(String codzona)
        {
            List<SubzonaBE> lst = new List<SubzonaBE>();
            List<List<SubzonaBE>> lstres = new List<List<SubzonaBE>>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", codzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    SubzonaBE z = new SubzonaBE();
                    z.codsubzona = dr[0].ToString();
                    z.orden = Convert.ToInt32(dr[1]);
                    z.lat = Convert.ToDouble(dr[2].ToString().Replace(",", "."));
                    z.lon = Convert.ToDouble(dr[3].ToString().Replace(",", "."));
                    lst.Add(z);
                }
                lstres = lst
                .Select((x, i) => new { Index = i, Value = x })
                .GroupBy(x => x.Value.codsubzona)
                .Select(x => x.Select(v => v.Value).ToList())
                .ToList();

                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {

            }
            return lstres;
        }

        public String RegistrarSubzona(SubzonaBE be)
        {
            List<SubzonaBE> lstSubzona = new List<SubzonaBE>();
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_ins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", be.codzona);
                cmd.Parameters.AddWithValue("@dscsubzona", be.dscsubzona);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                return "Error al intentar registrar: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
            return "OK";
        }


        public String ObtenerCodsubzona()
        {
            String codigo = "";
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("select IDENT_CURRENT('tb_subzona')+1 ", con);
                cmd.CommandType = CommandType.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    codigo = dr[0].ToString();
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                codigo = "ERROR " + ex.Message;
            }
            return codigo;
        }


        public String RegistrarDetSubzona(List<SubzonaBE> lst)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();

                foreach (SubzonaBE be in lst)
                {
                    SqlCommand cmd = new SqlCommand("sp_tb_subzona_det_ins", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@codsubzona", be.codsubzona);
                    cmd.Parameters.AddWithValue("@orden", be.orden);
                    cmd.Parameters.AddWithValue("@lat", be.lat);
                    cmd.Parameters.AddWithValue("@lon", be.lon);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                return "Error al intentar registrar: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
            return "OK";
        }

        public String ActualizarSubzona(SubzonaBE be)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_upd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codsubzona", be.codsubzona);
                cmd.Parameters.AddWithValue("@dscsubzona", be.dscsubzona);
                cmd.Parameters.AddWithValue("@estsubzona", be.estsubzona);
                cmd.ExecuteNonQuery();

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


        /*********  tb_subzona_et *********/
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
