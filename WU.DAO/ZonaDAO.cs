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
                lstZona.Add(new ZonaBE() { dsczona = ex.Message });
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

        public List<ZonaBE> DibujarZona(String codzona)
        {
            List<ZonaBE> lst = new List<ZonaBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", codzona);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.orden = Convert.ToInt32(dr[0]);
                    z.lat = Convert.ToDouble(dr[1].ToString().Replace(",", "."));
                    z.lon = Convert.ToDouble(dr[2].ToString().Replace(",", "."));
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


        public List<List<ZonaBE>> DibujarZonas()
        {
            List<ZonaBE> lst = new List<ZonaBE>();
            List<List<ZonaBE>> lstres = new List<List<ZonaBE>>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", "%");
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.codzona = dr[3].ToString();
                    z.orden = Convert.ToInt32(dr[0]);
                    z.lat = Convert.ToDouble(dr[1].ToString().Replace(",", "."));
                    z.lon = Convert.ToDouble(dr[2].ToString().Replace(",", "."));
                    lst.Add(z);
                }
                lstres = lst
                .Select((x, i) => new { Index = i, Value = x })
                .GroupBy(x => x.Value.codzona)
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

        public String RegistrarZona(ZonaBE be)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_ins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codubigeo", be.codubigeo);
                cmd.Parameters.AddWithValue("@dsczona", be.dsczona);
                cmd.Parameters.AddWithValue("@estzona", be.estzona);
                cmd.Parameters.AddWithValue("@fchregistro", be.fchregistro);
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


        public String ObtenerCodzona()
        {
            String codigo = "";
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("select IDENT_CURRENT('tb_zona')+1 ", con);
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

        public String RegistrarDetZona(List<ZonaBE> lst)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();

                foreach (ZonaBE be in lst)
                {
                    SqlCommand cmd = new SqlCommand("sp_tb_zona_det_ins", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@codzona", be.codzona);
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

        public String ActualizarZona(ZonaBE be)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_upd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", be.codzona);
                cmd.Parameters.AddWithValue("@codubigeo", be.codubigeo);
                cmd.Parameters.AddWithValue("@dsczona", be.dsczona);
                cmd.Parameters.AddWithValue("@estzona", be.estzona);
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


        public String ActualizarDetZona(List<ZonaBE> lst)
        {
            SqlConnection con = c.AbrirConexion();
            try
            {
                con.Open();
                //
                SqlCommand cmd = new SqlCommand("sp_tb_zona_det_del", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", lst[0].codzona);
                cmd.ExecuteNonQuery();
                //
                RegistrarDetZona(lst);

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
        
        //SZ asignadas
        
        public List<SubzonaETBE> BuscarSZAsignadas(String fchIni, String fchFin)
        {
            List<SubzonaETBE> lst = new List<SubzonaETBE>();

            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_et_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fchinicio", fchIni);
                cmd.Parameters.AddWithValue("@fchfin", fchFin);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lst.Add(
                        new SubzonaETBE()
                        {
                            dscsubzona = dr[0].ToString(),
                            nomet = dr[1].ToString(),
                            fchinicio = dr[2].ToString(),
                            fchfin = dr[3].ToString(),
                            codsubzona = Convert.ToInt32(dr[4].ToString())
                        });
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
                lst.Add(
                        new SubzonaETBE()
                        {
                            dscsubzona = "Error al obtener la información: " + ex.Message
                        });
            }
            return lst;
        }


        public List<List<SubzonaBE>> DibujarSubzonasAsignadas(String fchinicio, String fchfin)
        {
            List<SubzonaBE> lst = new List<SubzonaBE>();
            List<List<SubzonaBE>> lstres = new List<List<SubzonaBE>>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_subzona_et_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fchinicio", fchinicio);
                cmd.Parameters.AddWithValue("@fchfin", fchfin);
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


    }

}
