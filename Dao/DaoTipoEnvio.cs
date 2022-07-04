using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoTipoEnvio
    {
        AccesoDatos AD = new AccesoDatos();
        public SqlDataReader CargarDDL(String consulta)
        {
            
            return AD.ejecutarTransaccion(consulta);
        }


    }
}
