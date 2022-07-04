using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class DetalleVentas
    {
        //PROPIEDADES
        private int nroVent_Detalle;
        private String idArt_Detalle;
        private decimal precioArt_Detalle;
        private int cantidad_Detalle;
        public int NroVent_Detalle { get => nroVent_Detalle; set => nroVent_Detalle = value; }
        public string IdArt_Detalle { get => idArt_Detalle; set => idArt_Detalle = value; }
        public decimal PrecioArt_Detalle { get => precioArt_Detalle; set => precioArt_Detalle = value; }
        public int Cantidad_Detalle { get => cantidad_Detalle; set => cantidad_Detalle = value; }
    }
}
