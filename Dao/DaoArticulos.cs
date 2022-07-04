using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    public class DaoArticulos
    {
        AccesoDatos ad = new AccesoDatos();

        public Articulo getArticulo(Articulo art)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art,IdCat_Art, IdMat_Art, Nombre_Art, Descripcion_Art, UrlImagen_Art, Stock_Art,FechaIngreso_Art,PrecioUnitario_Art, Estado_Art  FROM Articulos WHERE Nombre_Art = ' " + art.Nombre + "'" );

            art.Id = tabla.Rows[0][0].ToString();
            art.Id_categoria = tabla.Rows[0][1].ToString();
            art.Id_material = tabla.Rows[0][2].ToString();
            art.Nombre = tabla.Rows[0][3].ToString();
            art.Descripcion = tabla.Rows[0][4].ToString();
            art.Url = tabla.Rows[0][5].ToString();
            art.Stock = Convert.ToInt32(tabla.Rows[0][6].ToString());
            art.FechaIngreso  = Convert.ToDateTime(tabla.Rows[0][7].ToString());
            art.PrecioUnitario  = Convert.ToDecimal(tabla.Rows[0][7].ToString());
            art.Estado  = Convert.ToBoolean(tabla.Rows[0][7].ToString());
            return art;
        }
        public DataTable getTablaArticulo()
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art,IdCat_Art, IdMat_Art, Nombre_Art, Descripcion_Art, UrlImagen_Art, Stock_Art,FechaIngreso_Art,PrecioUnitario_Art, Estado_Art  FROM Articulos");
            return tabla;
        }

        public DataTable getConsulta(string n)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art, Nombre_Art, UrlImagen_Art,PrecioUnitario_Art FROM Articulos WHERE Nombre_Art LIKE '" + n + "%' ");
            return tabla;
        }

        public DataTable getDescripcion(string id)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Descripcion_Art FROM Articulos WHERE Id_Art = '" + id + "'");
            return tabla;
        }
        public DataTable getTodos()
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art, Nombre_Art, UrlImagen_Art, PrecioUnitario_Art FROM Articulos ORDER BY id_Art ASC");
            return tabla;
        }

        public DataTable getProducto(string id)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art, Nombre_Art, UrlImagen_Art,PrecioUnitario_Art FROM Articulos WHERE Id_Art = '" + id + "'");
            return tabla;
        }

        public DataTable getFiltro(String filtro, String orden)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art, Nombre_Art, UrlImagen_Art,PrecioUnitario_Art FROM Articulos WHERE " + filtro + "ORDER BY " + orden + "");
            return tabla;
        }
        public DataTable getOrden(String orden)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "Select Id_Art, Nombre_Art, UrlImagen_Art,PrecioUnitario_Art FROM Articulos ORDER BY " + orden + "");
            return tabla;
        }
        public DataTable getCantidad(String id)
        {
            DataTable tabla = ad.ObtenerTabla("Articulos", "SELECT Stock_Art FROM Articulos WHERE Id_Art = '" + id + "' ");
            return tabla;
        }

        public bool ExisteArticulo(Articulo art)
        {
            return ad.Existe("SELECT * FROM Articulos WHERE Id_Art ='" + art.Id + "'");
        }

        public int EliminarArticulo(Articulo art)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@ID", SqlDbType.Char);
            parametro.Value = art.Id;
            return ad.EjecutarProcAlmacenado(cmd, "SPEliminarArticulo");
        }
        
        public int AgregarArticulo(Articulo art)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@ID", SqlDbType.Char);
            parametro.Value = art.Id;
            parametro = cmd.Parameters.Add("@IDCAT", SqlDbType.Char);
            parametro.Value = art.Id_categoria;
            parametro = cmd.Parameters.Add("@IDMAT", SqlDbType.Char);
            parametro.Value = art.Id_material;
            parametro = cmd.Parameters.Add("@NOMBRE", SqlDbType.Char);
            parametro.Value = art.Nombre;
            parametro = cmd.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar);
            parametro.Value = art.Descripcion;
            parametro = cmd.Parameters.Add("@URL", SqlDbType.VarChar);
            parametro.Value = art.Url;
            parametro = cmd.Parameters.Add("@STOCK", SqlDbType.VarChar);
            parametro.Value = art.Stock;
            parametro = cmd.Parameters.Add("@FECHA", SqlDbType.Date);
            parametro.Value = art.FechaIngreso;
            parametro = cmd.Parameters.Add("@PRECIO", SqlDbType.Decimal);
            parametro.Value = art.PrecioUnitario;
            return ad.EjecutarProcAlmacenado(cmd, "SPAgregarArticulo");
        }
        public int ActualizarArticulo(Articulo art)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@ID", SqlDbType.Char);
            parametro.Value = art.Id;
            parametro = cmd.Parameters.Add("@IDCAT", SqlDbType.Char);
            parametro.Value = art.Id_categoria;
            parametro = cmd.Parameters.Add("@IDMAT", SqlDbType.Char);
            parametro.Value = art.Id_material;
            parametro = cmd.Parameters.Add("@NOMBRE", SqlDbType.Char);
            parametro.Value = art.Nombre;
            parametro = cmd.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar);
            parametro.Value = art.Descripcion;
            parametro = cmd.Parameters.Add("@URL", SqlDbType.VarChar);
            parametro.Value = art.Url;
            parametro = cmd.Parameters.Add("@STOCK", SqlDbType.VarChar);
            parametro.Value = art.Stock;
            parametro = cmd.Parameters.Add("@FECHA", SqlDbType.Date);
            parametro.Value = art.FechaIngreso;
            parametro = cmd.Parameters.Add("@PRECIO", SqlDbType.Decimal);
            parametro.Value = art.PrecioUnitario;
            parametro = cmd.Parameters.Add("@ESTADO", SqlDbType.Int);
            parametro.Value = art.Estado;
            return ad.EjecutarProcAlmacenado(cmd, "SPActualizarArticulo");
        }

        public DataTable filtrarArticulo(string filtro)
        {
            DataTable tabla = ad.ObtenerTabla("Articulo", filtro);
            return tabla;
        }
    }
}
