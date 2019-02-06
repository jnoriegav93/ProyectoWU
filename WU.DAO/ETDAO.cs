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
        public List<ETBE> ListarET()
        {
            List<ETBE> lstET = new List<ETBE>();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_tb_et_lst", con);
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
            }
            catch (Exception ex)
            {

            }
            return lstET;
        }
    }
}
