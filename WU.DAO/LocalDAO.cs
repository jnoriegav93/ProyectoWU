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
    public class LocalDAO
    {
        Conexion c = new Conexion();
        public List<LocalBE> CargarLocales(ZonaBE param)
        {
            List<LocalBE> lst = new List<LocalBE>();  
            try
            {
                SqlConnection con = c.AbrirConexion();
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_local_dib", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codzona", ((object)param.codzona) ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@moneytransfer", ((object)param.moneytransfer) ?? "0");
                cmd.Parameters.AddWithValue("@pagoservicios", ((object)param.pagoservicios) ?? "0");
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    LocalBE be = new LocalBE();
                    be.codlocal = Convert.ToInt32(dr[0].ToString());
                    be.nomlocal = dr[1].ToString();
                    be.lat = Convert.ToDouble(dr[2].ToString().Replace(",", "."));
                    be.lon = Convert.ToDouble(dr[3].ToString().Replace(",", "."));
                    be.calificacion = dr[4].ToString();

                    lst.Add(be);
                }
                con.Close();
                con.Dispose();
            }
            catch (Exception ex)
            {
            }
            return lst;
        }
    }
}
