using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    class AccesoDatos
    {
        private string ruta = "Data Source=localhost\\sqlexpress;Initial Catalog=TodoAccesoriosBD;Integrated Security=True";

        public AccesoDatos() { }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(ruta);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlDataAdapter ObtenerAdaptador(string consulta, SqlConnection cn)
        {
            SqlDataAdapter adapter;
            try
            {
                adapter = new SqlDataAdapter(consulta, cn);
                return adapter;
            }
            catch(Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(string nombre,string consulta)
        {
            SqlConnection cn = ObtenerConexion();
            SqlDataAdapter adapter = ObtenerAdaptador(consulta, cn);
            DataSet ds = new DataSet();
            adapter.Fill(ds, nombre);
            cn.Close();
            return ds.Tables[nombre];
        }

        public int EjecutarProcAlmacenado(SqlCommand command, string nombre)
        {
            SqlConnection cn = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = command;
            cmd.Connection = cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nombre;
            int cambios = cmd.ExecuteNonQuery();
            cn.Close();
            return cambios;
        }

        public Boolean Existe(string consulta)
        {
            SqlConnection cn = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, cn);
            SqlDataReader dato = cmd.ExecuteReader();
            Boolean existe = false;
            if (dato.Read()) existe = true;
            return existe;
        }

        public SqlDataReader ejecutarTransaccion(String consulta)
        {
            SqlConnection cn = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;

        }
    }
}
