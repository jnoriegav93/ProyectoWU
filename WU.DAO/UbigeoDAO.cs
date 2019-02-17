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
    public class UbigeoDAO
    {
        Conexion c = new Conexion();

        public List<UbigeoBE> listarDepartamentos()
        {
            List<UbigeoBE> lst = new List<UbigeoBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_ubigeo_dep", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    UbigeoBE be = new UbigeoBE();
                    be.codubigeo = dr[0].ToString();
                    be.departamento = dr[1].ToString();
                    lst.Add(be);
                }
                con.Close();
                con.Dispose();
                lst.Insert(0, new UbigeoBE() { codubigeo = "0", departamento = "-DEPARTAMENTO-" });
            }
            catch (Exception ex)
            {
                UbigeoBE be = new UbigeoBE();
                be.codubigeo = "0";
                be.departamento = "-ERROR-";
                lst.Add(be);
            }
            return lst;
        }

        public List<UbigeoBE> listarProvincias(String coddep)
        {
            List<UbigeoBE> lst = new List<UbigeoBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_ubigeo_pro", con);
                cmd.Parameters.AddWithValue("@coddep", coddep);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    UbigeoBE be = new UbigeoBE();
                    be.codubigeo = dr[0].ToString();
                    be.provincia = dr[1].ToString();
                    lst.Add(be);
                }
                con.Close();
                con.Dispose();
                lst.Insert(0, new UbigeoBE() { codubigeo = "0", provincia = "-PROVINCIA-" });
            }
            catch (Exception ex)
            {
                UbigeoBE be = new UbigeoBE();
                be.codubigeo = "0";
                be.provincia = "-ERROR-";
                lst.Add(be);
            }
            return lst;
        }


        public List<UbigeoBE> listarDistritos(String coddep, String codpro)
        {
            List<UbigeoBE> lst = new List<UbigeoBE>();
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_ubigeo_dis", con);
                cmd.Parameters.AddWithValue("@coddep", coddep);
                cmd.Parameters.AddWithValue("@codpro", codpro);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    UbigeoBE be = new UbigeoBE();
                    be.codubigeo = dr[0].ToString();
                    be.distrito = dr[1].ToString();
                    lst.Add(be);
                }
                con.Close();
                con.Dispose();
                lst.Insert(0, new UbigeoBE() { codubigeo = "0", distrito = "-DISTRITO-" });
            }
            catch (Exception ex)
            {
                UbigeoBE be = new UbigeoBE();
                be.codubigeo = "0";
                be.distrito = "-ERROR-";
                lst.Add(be);
            }
            return lst;
        }


    }
}
