using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CARROS.ENTIDADES;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CARROS.DAO
{
    public class CombustibleDAO
    {
        public List<CombustibleE> ListarCombustibles()
        {
            List<CombustibleE> ListaC = new List<CombustibleE>();
            SqlConnection con = Conexion.cn();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("ListarCombustiblesSP", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    CombustibleE combustibleE = new CombustibleE();
                    combustibleE.CombustibleID = Convert.ToInt32(dr[0]);
                    combustibleE.Nombre = dr[1].ToString();
                    combustibleE.Descripcion = dr[2].ToString();
                    ListaC.Add(combustibleE);
                } con.Close();
            }
            catch (Exception E)
            { throw; }
            return ListaC;
        }
    }
}
