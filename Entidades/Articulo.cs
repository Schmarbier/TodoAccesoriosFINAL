using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{

     public class Articulo
    {
        private string id;
        private string id_categoria;
        private string id_material;
        private string nombre;
        private string descripcion;
        private string url;
        private int stock;
        private Nullable<DateTime> fechaIngreso;
        private decimal precioUnitario;
        private bool estado;
        public Articulo()
        {
           FechaIngreso = null;
            precioUnitario = -1;
        }
        public string Id { get => id; set => id = value; }
        public string Id_categoria { get => id_categoria; set => id_categoria = value; }
        public string Id_material { get => id_material; set => id_material = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Stock { get => stock; set => stock = value; }
        public decimal PrecioUnitario { get => precioUnitario; set => precioUnitario = value; }
        public bool Estado { get => estado; set => estado = value; }
        public string Url { get => url; set => url = value; }
        public DateTime? FechaIngreso { get => fechaIngreso; set => fechaIngreso = value; }
    }
}
