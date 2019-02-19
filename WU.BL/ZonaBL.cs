﻿using System;
using System.Collections.Generic;
using WU.DAO;
using WU.BE;
namespace WU.BL
{
    public class ZonaBL
    {
        ZonaDAO zona = new ZonaDAO();

        public String ProbarConexion()
        {
            return (new Conexion()).ProbarConexion();
        }

        public List<ZonaBE> CargarZonas()
        {
            return zona.CargarZonas();
        }
        public List<ZonaBE> ListarZonas(ZonaBE param)
        {
            return zona.ListarZonas(param);
        }
        public ZonaBE CargarDetalleZona(String codzona)
        {
            return zona.CargarDetalleZona(codzona);
        }
        public List<ZonaBE> DibujarZona(String codzona)
        {
            return zona.DibujarZona(codzona);
        }
        public String RegistrarZona(ZonaBE be)
        {
            return zona.RegistrarZona(be);
        }
        public String RegistrarDetZona(List<ZonaBE> lst)
        {
            return zona.RegistrarDetZona(lst);
        }

        public String ObtenerCodzona()
        {
            return zona.ObtenerCodzona();
        }

    }
}
