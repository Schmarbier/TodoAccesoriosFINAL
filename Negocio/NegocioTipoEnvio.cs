using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dao;

namespace Negocio
{
    public class NegocioTipoEnvio
    {
        DaoTipoEnvio tipoenvio = new DaoTipoEnvio();
        public SqlDataReader cargarDDL()
        {
            String consulta = "SELECT * FROM TipoEnvio";
            return tipoenvio.CargarDDL(consulta);
        }
    }
}
