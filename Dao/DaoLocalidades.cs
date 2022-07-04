using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Dao
{
    public class DaoLocalidades
    {
        AccesoDatos AD = new AccesoDatos();
        public SqlDataReader CargarDDL(String consulta)
        {
            return AD.ejecutarTransaccion(consulta);
        }

        public DataTable getNombreXid(string id)
        {
            return AD.ObtenerTabla("Localidad", "SELECT Nombre_Loc FROM Localidades WHERE Id_Loc = " + id);
        }
    }
}
