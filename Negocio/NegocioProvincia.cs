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
    public class NegocioProvincia
    {
        DaoProvincias provincia = new DaoProvincias();
       
        public SqlDataReader cargarDDL()
        {
            String consulta = "SELECT * FROM Provincias";
            return provincia.CargarDDL(consulta);
        }

        public string getProvinciaXid(string id)
        {
            DataTable aux = provincia.getNombreXid(id);
            string nombre = aux.Rows[0][0].ToString();
            return nombre;
        }
    }
}
