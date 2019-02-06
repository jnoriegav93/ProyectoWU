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
    public class FotoDAO
    {
        public int InsertarFoto(FotoE fotoE)
        {
            int IDInsertado = 0;
            SqlConnection con = Conexion.cn();
            con.Open();
            try
            {
                SqlCommand cmd;
                cmd = new SqlCommand("InsertarFotoSP", con);
                cmd.CommandType = CommandType.StoredProcedure;                
                cmd.Parameters.AddWithValue("@URL",fotoE.URL);
                cmd.Parameters.AddWithValue("@CarroID",fotoE.CarroID);
                IDInsertado = (int)cmd.ExecuteScalar();
                con.Close();
            }
            catch(Exception E)
            { throw; }            
            return IDInsertado;
        }

        public bool EliminarFoto(int CarroID)
        {
            bool Eliminado = false;
            SqlConnection con = Conexion.cn();
            con.Open();
            try
            {
                SqlCommand cmd;
                cmd = new SqlCommand("EliminarFoto", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CarroID", CarroID);
                cmd.ExecuteNonQuery();
                Eliminado = true;
                con.Close();
            }
            catch (Exception E)
            { throw; }
            return Eliminado;
        }
    }
}
