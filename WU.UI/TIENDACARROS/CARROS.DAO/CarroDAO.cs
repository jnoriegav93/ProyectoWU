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
    public class CarroDAO
    {
        public int InsertarCarro(CarroE carroE)
        {
            int CarroID = 0;
            try
            {
                SqlConnection con = Conexion.cn();
                con.Open();
                SqlCommand cmd = new SqlCommand("InsertarCarroSP", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //MARCA
                SqlParameter prmMarca = new SqlParameter();
                prmMarca.ParameterName = "@Marca";
                prmMarca.SqlDbType = SqlDbType.VarChar;
                prmMarca.Size = 50;
                prmMarca.Value = carroE.Marca;

                //MODELO
                SqlParameter prmModelo = new SqlParameter();
                prmModelo.ParameterName = "@Modelo";
                prmModelo.SqlDbType = SqlDbType.VarChar;
                prmModelo.Size = 50;
                prmModelo.Value = carroE.Modelo;

                //ANIO
                SqlParameter prmAnio = new SqlParameter();
                prmAnio.ParameterName = "@Anio";
                prmAnio.SqlDbType = SqlDbType.Char;
                prmAnio.Size = 4;
                prmAnio.Value = carroE.Anio;

                //COLOR
                SqlParameter prmColor = new SqlParameter();
                prmColor.ParameterName = "@Color";
                prmColor.SqlDbType = SqlDbType.VarChar;
                prmColor.Size = 50;
                prmColor.Value = carroE.Color;

                //PLACA
                SqlParameter prmPlaca = new SqlParameter();
                prmPlaca.ParameterName = "@Placa";
                prmPlaca.SqlDbType = SqlDbType.Char;
                prmPlaca.Size = 6;
                prmPlaca.Value = carroE.Placa;

                //N PUERTAS
                SqlParameter prmNPuertas = new SqlParameter();
                prmNPuertas.ParameterName = "@NPuertas";
                prmNPuertas.SqlDbType = SqlDbType.Int;                
                prmNPuertas.Value = carroE.NPuertas;

                //PRECIO
                SqlParameter prmPrecio = new SqlParameter();
                prmPrecio.ParameterName = "@Precio";
                prmPrecio.SqlDbType = SqlDbType.Decimal;
                prmPrecio.Value = carroE.Precio;

                //PaisID
                SqlParameter prmPaisID = new SqlParameter();
                prmPaisID.ParameterName = "@PaisID";
                prmPaisID.SqlDbType = SqlDbType.Int;
                prmPaisID.Value = carroE.paisE.PaisID;

                //ComsbutibleID
                SqlParameter prmCombustibleID = new SqlParameter();
                prmCombustibleID.ParameterName = "@CombustibleID";
                prmCombustibleID.SqlDbType = SqlDbType.Int;
                prmCombustibleID.Value = carroE.combustibleE.CombustibleID;

                //TransmisionID
                SqlParameter prmTransmisionID = new SqlParameter();
                prmTransmisionID.ParameterName = "@TransmisionID";
                prmTransmisionID.SqlDbType = SqlDbType.Int;
                prmTransmisionID.Value = carroE.transmisionE.TransmisionID;
                cmd.Parameters.Add(prmMarca);
                cmd.Parameters.Add(prmModelo);
                cmd.Parameters.Add(prmColor);
                cmd.Parameters.Add(prmPlaca);
                cmd.Parameters.Add(prmAnio);
                cmd.Parameters.Add(prmPrecio);
                cmd.Parameters.Add(prmNPuertas);
                cmd.Parameters.Add(prmPaisID);
                cmd.Parameters.Add(prmTransmisionID);
                cmd.Parameters.Add(prmCombustibleID);
                CarroID = (int)cmd.ExecuteScalar();
                con.Close();
            }
            catch(Exception E)
            { throw; }
            return CarroID;
        }

        public List<CarroE> ListarCarros()
        {
            List<CarroE> ListaC = new List<CarroE>();
            SqlConnection con = Conexion.cn();
            con.Open();            
            try
            {
                SqlCommand cmd = new SqlCommand("ListarCarrosCompletoSP",con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    CarroE carroE = new CarroE();
                    carroE.CarroID = Convert.ToInt32(dr[0]);
                    carroE.Marca = dr[1].ToString();
                    carroE.Modelo = dr[2].ToString();
                    carroE.Color = dr[3].ToString();
                    carroE.Placa = dr[4].ToString();
                    carroE.Anio = dr[5].ToString();
                    carroE.NPuertas = Convert.ToInt32(dr[6]);
                    carroE.Precio = Convert.ToDecimal(dr[7]);
                    carroE.combustibleE.Nombre = dr[8].ToString();                    
                    carroE.paisE.Nombre = dr[9].ToString();
                    carroE.transmisionE.Nombre = dr[10].ToString();
                    carroE.fotoE.URL = dr[11].ToString();
                    ListaC.Add(carroE);
                }
            }
            catch (Exception E)
            { throw; }
            return ListaC;
        }
        
        public CarroE ObtenerCarro(int? CarroID)
        {
            CarroE carroE = new CarroE();
            if (CarroID.HasValue)
            {
                SqlConnection con = Conexion.cn();
                con.Open();
                try
                {
                    SqlCommand cmd;
                    cmd = new SqlCommand("ObtenerCarroXIDSP", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CarroID", CarroID.Value);
                    SqlDataReader dr = cmd.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows)
                    {
                        carroE.CarroID = Convert.ToInt32(dr[0]);
                        carroE.Marca = dr[1].ToString();
                        carroE.Modelo = dr[2].ToString();
                        carroE.Color = dr[3].ToString();
                        carroE.Placa = dr[4].ToString();
                        carroE.Anio = dr[5].ToString();
                        carroE.NPuertas = Convert.ToInt32(dr[6]);
                        carroE.Precio = Convert.ToDecimal(dr[7]);
                        carroE.combustibleE.Nombre = dr[8].ToString();
                        carroE.paisE.Nombre = dr[9].ToString();
                        carroE.transmisionE.Nombre = dr[10].ToString();
                        carroE.fotoE.URL = dr[11].ToString();
                    }
                    con.Close();
                }
                catch (Exception E)
                { throw; }
            }
            return carroE;
        }

        public bool EliminarCarro(int CarroID)
        {
            bool Eliminado = false;
            SqlConnection con = Conexion.cn();
            con.Open();
            try
            {
                SqlCommand cmd;
                cmd = new SqlCommand("ElimnarCarroSP", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CarroID", CarroID);
                cmd.ExecuteNonQuery();
                Eliminado = true; con.Close();
            }
            catch(Exception E)
            { throw; }
            return Eliminado;
        }
    }
}
