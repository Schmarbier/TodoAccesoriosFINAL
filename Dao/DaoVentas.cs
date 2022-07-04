using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using System;

namespace Dao
{
    public class DaoVentas
    {
        AccesoDatos ad = new AccesoDatos();

        public Ventas GetVentas(Ventas Venta)
        {
            DataTable tabla = ad.ObtenerTabla("Ventas", "Select Nro_Vent, DniUsuario_Vent, IdTipoEnvio_Vent, IdLoc_Vent, IdProvLoc_Vent," +
            " IdTipoPago_Vent, Usuario_Vent, EmailUsuario_Vent, DireccionUs_Vent, TelefonoUsuario_Vent, Total_Vent, Fecha_Vent, Nombre_Vent, Apellido_Vent, Departamento_Vent, Barrio_Vent, CodPostal_Vent FROM Ventas WHERE Nro_Vent= " + Venta.getNroVenta());

            Venta.setNroVenta(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            Venta.setDniUsuario(tabla.Rows[0][1].ToString());
            Venta.setIdTipoEnvio(tabla.Rows[0][2].ToString());
            Venta.setIdLoc(tabla.Rows[0][3].ToString());
            Venta.setIdProvLoc(tabla.Rows[0][4].ToString());
            Venta.setIdTipoPago(tabla.Rows[0][5].ToString());
            Venta.setUsuario(tabla.Rows[0][6].ToString());
            Venta.setEmailUsuario(tabla.Rows[0][7].ToString());
            Venta.setDireccion(tabla.Rows[0][8].ToString());
            Venta.setTelefono(tabla.Rows[0][9].ToString());
            Venta.setTotal(Convert.ToDecimal(tabla.Rows[0][10].ToString()));
            Venta.setFecha(Convert.ToDateTime(tabla.Rows[0][11].ToString()));
            Venta.setNombre(tabla.Rows[0][12].ToString());
            Venta.setApellido(tabla.Rows[0][13].ToString());
            Venta.setDepartamento(tabla.Rows[0][14].ToString());
            Venta.setBarrio(tabla.Rows[0][15].ToString());
            Venta.setCodPostal(Convert.ToInt32(tabla.Rows[0][16].ToString()));

            return Venta;

        }

        public DataTable GetTablaVentas()
        {
            DataTable tabla = ad.ObtenerTabla("Ventas", "select * from Ventas");
            return tabla;
        }


        public int AgregarVenta(Ventas venta)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();

            parametro = cmd.Parameters.Add("@DniUsuario", SqlDbType.Char);
            parametro.Value = venta.getDniUsuario();

            parametro = cmd.Parameters.Add("@IdTipoEnvio", SqlDbType.Char);
            parametro.Value = venta.getIdTipoEnvio();

            parametro = cmd.Parameters.Add("@IdLoc", SqlDbType.Char);
            parametro.Value = venta.getIdLoc();

            parametro = cmd.Parameters.Add("@IdProvLoc", SqlDbType.Char);
            parametro.Value = venta.getIdProvLoc();

            parametro = cmd.Parameters.Add("@IdTipoPago", SqlDbType.Char);
            parametro.Value = venta.getIdTipoPago();

            parametro = cmd.Parameters.Add("@Usuario", SqlDbType.VarChar);
            parametro.Value = venta.getUsuario();

            parametro = cmd.Parameters.Add("@EmailUsuario", SqlDbType.VarChar);
            parametro.Value = venta.getEmailUsuario();

            parametro = cmd.Parameters.Add("@DireccionUs", SqlDbType.VarChar);
            parametro.Value = venta.getDireccion();

            parametro = cmd.Parameters.Add("@TelefonoUsuario", SqlDbType.Char);
            parametro.Value = venta.getTelefono();

            parametro = cmd.Parameters.Add("@Total", SqlDbType.Decimal);
            parametro.Value = venta.getTotal();

            parametro = cmd.Parameters.Add("@Fecha", SqlDbType.DateTime);
            parametro.Value = venta.getFecha();

            parametro = cmd.Parameters.Add("@Nombre", SqlDbType.VarChar);
            parametro.Value = venta.getNombre();

            parametro = cmd.Parameters.Add("@Apellido", SqlDbType.VarChar);
            parametro.Value = venta.getApellido();

            parametro = cmd.Parameters.Add("@Departamento", SqlDbType.VarChar);
            parametro.Value = venta.getDepartamento();

            parametro = cmd.Parameters.Add("@Barrio", SqlDbType.VarChar);
            parametro.Value = venta.getBarrio();

            parametro = cmd.Parameters.Add("@CodPostal", SqlDbType.Int);
            parametro.Value = venta.getCodPostal();

            return ad.EjecutarProcAlmacenado(cmd, "SPAgregarVenta");
        }

        public int ActualizarVenta(Ventas venta)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@NroVenta", SqlDbType.Int);
            parametro.Value = venta.getNroVenta();

            parametro = cmd.Parameters.Add("@DniUsuario", SqlDbType.Char);
            parametro.Value = venta.getDniUsuario();

            parametro = cmd.Parameters.Add("@IdTipoEnvio", SqlDbType.Char);
            parametro.Value = venta.getIdTipoEnvio();

            parametro = cmd.Parameters.Add("@IdLoc", SqlDbType.Char);
            parametro.Value = venta.getIdLoc();

            parametro = cmd.Parameters.Add("@IdProvLoc", SqlDbType.Char);
            parametro.Value = venta.getIdProvLoc();

            parametro = cmd.Parameters.Add("@IdTipoPago", SqlDbType.Char);
            parametro.Value = venta.getIdTipoPago();

            parametro = cmd.Parameters.Add("@Usuario", SqlDbType.VarChar);
            parametro.Value = venta.getUsuario();

            parametro = cmd.Parameters.Add("@EmailUsuario", SqlDbType.VarChar);
            parametro.Value = venta.getEmailUsuario();

            parametro = cmd.Parameters.Add("@DireccionUs", SqlDbType.VarChar);
            parametro.Value = venta.getDireccion();

            parametro = cmd.Parameters.Add("@TelefonoUsuario", SqlDbType.Char);
            parametro.Value = venta.getTelefono();

            parametro = cmd.Parameters.Add("@Total", SqlDbType.Decimal);
            parametro.Value = venta.getTotal();

            parametro = cmd.Parameters.Add("@Fecha", SqlDbType.DateTime);
            parametro.Value = venta.getFecha();

            parametro = cmd.Parameters.Add("@Nombre", SqlDbType.VarChar);
            parametro.Value = venta.getNombre();

            parametro = cmd.Parameters.Add("@Apellido", SqlDbType.VarChar);
            parametro.Value = venta.getApellido();

            parametro = cmd.Parameters.Add("@Departamento", SqlDbType.VarChar);
            parametro.Value = venta.getDepartamento();

            parametro = cmd.Parameters.Add("@Barrio", SqlDbType.VarChar);
            parametro.Value = venta.getBarrio();

            parametro = cmd.Parameters.Add("@CodPostal", SqlDbType.Int);
            parametro.Value = venta.getCodPostal();

            return ad.EjecutarProcAlmacenado(cmd, "SPActualizarVenta");
        }

        public DataTable getNroVenta()
        {
            return ad.ObtenerTabla("ventas", "SELECT MAX(Ventas.Nro_Vent) FROM VENTAS ");
        }

        public DataTable FiltrarVentas(string filtro)
        {
            DataTable tabla = ad.ObtenerTabla("Ventas", "SELECT * FROM Ventas WHERE " + filtro);
            return tabla;
        }

        public DataTable TablaVentasUsuario(string dni)
        {
            return ad.ObtenerTabla("VentasXUsuario", "SELECT Nombre_Art AS Articulo, Cantidad_Detalle AS Cantidad, Fecha_Vent AS Fecha ,PrecioArt_Detalle AS Precio"
                + " FROM Ventas INNER JOIN Detalle_Ventas ON Ventas.Nro_Vent = Detalle_Ventas.NroVent_Detalle"
                + " INNER JOIN Articulos ON Detalle_Ventas.IdArt_Detalle = Articulos.Id_Art"
                + " WHERE DniUsuario_Vent = '" + dni + "'");
        }
    }
}
