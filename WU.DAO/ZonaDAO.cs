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
        public List<ZonaBE> ListarZonas()
        {
            List<ZonaBE> lstZona = new List<ZonaBE>();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_zona_lst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ZonaBE z = new ZonaBE();
                    z.codzona = Convert.ToInt32(dr[0]);
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
    }
}
