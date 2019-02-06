using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using CARROS.ENTIDADES;

namespace CARROS.DAO
{
    public class UsuarioDAO
    {
        public UsuarioE ValidarLogin(string user, string password)
        {
            bool validado = false;
            UsuarioE usuarioE = new UsuarioE();       
            SqlConnection con = Conexion.cn();
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("LoginSP", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", user);
                cmd.Parameters.AddWithValue("@UserPassword", password);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                if(dr.HasRows)
                {
                    usuarioE.User = dr[0].ToString();                    
                    validado = true;
                } con.Close();
            }
            catch(Exception E)
            { throw; }
            return usuarioE;
        }

    }
}
