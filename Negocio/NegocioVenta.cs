using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioVenta
    {
        DaoVentas Dao = new DaoVentas();

        public Ventas GetVent(int NroVenta)
        {
            Ventas Venta = new Ventas();
            Venta.setNroVenta(NroVenta);
            return Dao.GetVentas(Venta);
        }


        public DataTable GetTablaVent()
        {
            return Dao.GetTablaVentas();
        }


        public bool AgregarVent(Ventas V)
        {
            //Ventas Venta = new Ventas();

            //Venta.setDniUsuario(V.getDniUsuario());
            //Venta.setIdTipoEnvio(V.getIdTipoEnvio());
            //Venta.setIdLoc(V.getIdLoc());
            //Venta.setIdProvLoc(V.getIdProvLoc());
            //Venta.setIdTipoPago(V.getIdTipoPago());
            //Venta.setUsuario(V.getUsuario());
            //Venta.setEmailUsuario(V.getEmailUsuario());
            //Venta.setDireccion(V.getDireccion());
            //Venta.setTelefono(V.getTelefono());
            //Venta.setTotal(V.getTotal());
            //Venta.setFecha(V.getFecha());
            //Venta.setNombre(V.getNombre());
            //Venta.setApellido(V.getApellido());
            //Venta.setDepartamento(V.getDepartamento());
            //Venta.setBarrio(V.getBarrio());
            //Venta.setCodPostal(V.getCodPostal());

            int op = Dao.AgregarVenta(V);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool ActualizarVent(Ventas V)
        {
            //Ventas Venta = new Ventas();
            //Venta.setNroVenta(V.getNroVenta());
            //Venta.setDniUsuario(V.getDniUsuario());
            //Venta.setIdTipoEnvio(V.getIdTipoEnvio());
            //Venta.setIdLoc(V.getIdLoc());
            //Venta.setIdProvLoc(V.getIdProvLoc());
            //Venta.setIdTipoPago(V.getIdTipoPago());
            //Venta.setUsuario(V.getUsuario());
            //Venta.setEmailUsuario(V.getEmailUsuario());
            //Venta.setDireccion(V.getDireccion());
            //Venta.setTelefono(V.getTelefono());
            //Venta.setTotal(V.getTotal());
            //Venta.setFecha(V.getFecha());
            //Venta.setNombre(V.getNombre());
            //Venta.setApellido(V.getApellido());
            //Venta.setDepartamento(V.getDepartamento());
            //Venta.setBarrio(V.getBarrio());
            //Venta.setCodPostal(V.getCodPostal());

            int op = Dao.ActualizarVenta(V);
            if (op == 1)
                return true;
            else
                return false;
        }

        public string getNroVenta(Ventas aux)
        {
            DataTable dt = Dao.getNroVenta(aux);
            return dt.Rows[0][0].ToString();
        }

        public DataTable GetFiltroVent(String Filtro)
        {
            return Dao.FiltrarVentas(Filtro);
        }

        public DataTable FiltrarPorHoy()
        {
            return Dao.FiltrarVentas("Fecha_Vent > getdate()");
        }

        public DataTable FiltrarUltimos7dias()
        {
            return Dao.FiltrarVentas("Fecha_Vent > dateadd(day,-7,getdate())");
        }
        public DataTable FiltrarUltimos15dias()
        {
            return Dao.FiltrarVentas("Fecha_Vent > dateadd(day,-15,getdate())");
        }

        public DataTable FiltrarUltimos30dias()
        {
            return Dao.FiltrarVentas("Fecha_Vent > dateadd(day,-30,getdate())");
        }

        public DataTable FiltrarCustom(string fecha1, string fecha2)
        {
            return Dao.FiltrarVentas("Fecha_Vent between '"+fecha1+"' and '"+fecha2+"'");
        }

    }
}
