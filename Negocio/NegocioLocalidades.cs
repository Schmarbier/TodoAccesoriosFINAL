using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Dao;

namespace Negocio
{
    public class NegocioLocalidades
    {
        DaoLocalidades loc = new DaoLocalidades();
        public SqlDataReader cargarDDL(String IdProv)
        {
            String consulta = "SELECT * FROM Localidades WHERE IdProv_Loc = '" + IdProv  + "' ";
            return loc.CargarDDL(consulta);
        }

        public string getLocalidadXid(string id)
        {
            DataTable aux = loc.getNombreXid(id);
            string nombre = aux.Rows[0][0].ToString();
            return nombre;
        }
    }
}
