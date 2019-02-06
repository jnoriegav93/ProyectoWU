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
    public class TransmisionDAO
    {
        public List<TransmisionE> ListarTransmisiones()
        {
            List<TransmisionE> ListaT = new List<TransmisionE>();
            SqlConnection con = Conexion.cn();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("ListarTransmisionSP", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TransmisionE combustibleE = new TransmisionE();
                    combustibleE.TransmisionID = Convert.ToInt32(dr[0]);
                    combustibleE.Nombre = dr[1].ToString();
                    combustibleE.Descripcion = dr[2].ToString();
                    ListaT.Add(combustibleE);
                } con.Close();
            }
            catch (Exception E)
            { throw; }
            return ListaT;
        }
    }
}
