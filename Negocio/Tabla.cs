using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Negocio
{
    public class Tabla
    {
        public DataTable crearTabla()
        {
            DataTable dt = new DataTable();
            DataColumn columna = new DataColumn("ID", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Nombre", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Precio", System.Type.GetType("System.Decimal"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Cantidad", System.Type.GetType("System.Int32"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Total", System.Type.GetType("System.Decimal"));
            dt.Columns.Add(columna);
            return dt;

        }
        public void agregarFilas(DataTable tabla, String id, String nombre, String precio, String cantidad, String total)
        {
            DataRow dr = tabla.NewRow();
            dr["ID"] = id;
            dr["Nombre"] = nombre;
            dr["Precio"] = Convert.ToDecimal(precio);
            dr["Cantidad"] = Convert.ToInt32(cantidad);
            dr["Total"] = Convert.ToDecimal(total);
            tabla.Rows.Add(dr);
        }
        
        public bool chequearRepetido(DataTable dt, string id)
        {
            foreach (DataRow fila in dt.Rows)
            {
                if (Convert.ToString(fila["ID"]) == id)
                {
                    return true;
                }
            }
            return false;
        }
    }
}
