using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using System;

namespace Dao
{
    public class DaoDetalleVentas
    {
        AccesoDatos ad = new AccesoDatos();
        DetalleVentas detalleVenta = new DetalleVentas();
        public DataTable GetTablaDetalleVentas(int x)
        {
            DataTable tabla = ad.ObtenerTabla("Detalle_Ventas", "select * from Detalle_Ventas WHERE NroVent_Detalle='" + x.ToString()+"'");
            return tabla;
        }

        public int AgregarDetalleVenta(DetalleVentas aux)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parameter = new SqlParameter();

            parameter = cmd.Parameters.Add("@NroVent", SqlDbType.Int);
            parameter.Value = aux.NroVent_Detalle;

            parameter = cmd.Parameters.Add("@IdArt", SqlDbType.Char);
            parameter.Value = aux.IdArt_Detalle;

            parameter = cmd.Parameters.Add("@Cantidad", SqlDbType.Int);
            parameter.Value = aux.Cantidad_Detalle;

            parameter = cmd.Parameters.Add("@PrecioArt", SqlDbType.Decimal);
            parameter.Value = aux.PrecioArt_Detalle;

            return ad.EjecutarProcAlmacenado(cmd, "SPAgregarDetalleVenta");
        }
    }
}
