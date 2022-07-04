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
        public DataTable GetTablaDetalleVentas(int x)
        {
            DataTable tabla = ad.ObtenerTabla("Detalle_Ventas", "select * from Detalle_Ventas WHERE NroVent_Detalle='" + x.ToString()+"'");
            return tabla;
        }
    }
}
