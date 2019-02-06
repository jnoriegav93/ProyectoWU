using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CARROS.DAO
{
    public class Conexion
    {
        public static SqlConnection cn()
        {
            SqlConnection con;
            con = new SqlConnection
                (ConfigurationManager.
                ConnectionStrings["CONEX"].
                ConnectionString);
            return con;
        }
    }
}
