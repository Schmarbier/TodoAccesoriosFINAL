using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioDetalleVenta
    {
        DaoDetalleVentas Dao = new DaoDetalleVentas();

        public DataTable GetDetalleVent(int NroVenta)
        {
            return Dao.GetTablaDetalleVentas(NroVenta);
        }
    }
}
