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
    public class NegocioArticulo
    {
        DaoArticulos dao = new DaoArticulos();
        Articulo art = new Articulo();

        public DataTable getFiltro(String cat, String mat, String min, String max, String orden)
        {
            bool suma=false;
            string consulta="";
            if (cat != "" )
            {
               if (suma == false)
                {
                    consulta += "IdCat_Art = '" + cat + "'";
                    suma = true;
                }
               else consulta += "AND IdCat_Art = '" + cat + "'";
            }
            if (mat != "")
            {
                if (suma == false)
                {
                    consulta += "IdMat_Art = '" + mat + "'";
                    suma = true;
                }
                else consulta += "AND IdMat_Art = '" + mat + "'";
            }
            if (min != "")
            {
                if (suma == false)
                {
                    consulta += "PrecioUnitario_Art >= '" + min + "'";
                    suma = true;
                }
                else consulta += "AND PrecioUnitario_Art >= '" + min + "'";
            }
            if (max != "")
            {
                if (suma == false)
                {
                    consulta += "PrecioUnitario_Art <= '" + max + "'";
                    suma = true;
                }
                else consulta += "AND PrecioUnitario_Art <= '" + max + "'";
            }
            if (suma == true) return dao.getFiltro(consulta, orden);
            else return dao.getOrden(orden);
        }
        public DataTable getConsultaBuscar(string nombre)
        {
            return dao.getConsulta(nombre);
        }
        public DataTable getConsultaDescripcion(string id)
        {
            return dao.getDescripcion(id);
        }
        public DataTable getTodos()
        {
            return dao.getTodos();
        }
        public Articulo getArt(string nombre)
        {
            art.Nombre = nombre;
            return dao.getArticulo(art);
        }

        public DataTable getTablaArt()
        {
            return dao.getTablaArticulo();
        }

        public DataTable getP(string id)
        {
            return dao.getProducto(id);
        }

        public int getCantidad (String id)
        {
            DataTable aux = dao.getCantidad(id);
            int cant = Convert.ToInt32(aux.Rows[0][0]);
            return cant;
        }

        public bool eliminarArt(string id)
        {
            art.Id = id;
            int op = dao.EliminarArticulo(art);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarArt(Articulo articulo)
        {
            int cantFilas = 0;

            if (dao.ExisteArticulo(articulo) == false)
            {
                cantFilas = dao.AgregarArticulo(articulo);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }

        public bool actualizarArt(Articulo articulo)
        {

            int op = dao.ActualizarArticulo(articulo);
            if (op == 1)
                return true;
            else
                return false;
        }

        public DataTable getFiltroArt(String filtro, int cual)
        {
            String filtro_completo = "SELECT * FROM Articulos ";

            switch (cual)
            {
                case 0:
                    filtro_completo += "WHERE Id_Art = '" + filtro + "'";
                    break;
                case 1:
                    filtro_completo += "WHERE IdCat_Art = '" + filtro + "'";
                    break;
                case 2:
                    filtro_completo += "WHERE IdMat_Art = '" + filtro + "'";
                    break;
                case 3:
                    filtro_completo += "WHERE Stock_Art = '" + filtro + "'";
                    break;
                case 4:
                    filtro_completo += "WHERE PrecioUnitario_Art = '" + filtro + "'";
                    break;
                case 5:
                    filtro_completo += "WHERE Estado = '" + filtro + "'";
                    break;
                case 6:
                    filtro_completo += "WHERE FechaIngreso_Art = '" + filtro + "'";
                    break;
                case 7:
                    filtro_completo += "WHERE Nombre_Art = '" + filtro + "'";
                    break;
            }
            return dao.filtrarArticulo(filtro_completo);
        }
        public DataTable getFiltroArt(Articulo art,int orden)
        {
            Boolean anterior = false;
            String filtro_completo = "SELECT * FROM Articulos WHERE ";

            ///ID 
            if (art.Id != null)
            {
                filtro_completo += "Id_Art = '" + art.Id + "'";
                anterior = true;
            }

            ///NOMBRE
            if (art.Nombre != null)
                if (anterior)
                    filtro_completo += " AND Nombre_Art = '" + art.Nombre + "'";
                else
                {
                    anterior = true;
                    filtro_completo += "Nombre_Art = '" + art.Nombre + "'";
                }

          ///CATEGORIA
            
            if (art.Id_categoria != null)
                if (anterior)
                    filtro_completo += " AND IdCat_Art = '" + art.Id_categoria + "'";
                else
                {
                    filtro_completo += "IdCat_Art = '" + art.Id_categoria + "'";
                    anterior = true;
                }
            if (art.Id_material != null)
                 if (anterior)
                     filtro_completo += " AND IdMat_Art = '" + art.Id_material + "'";
                 else
                 {
                     filtro_completo += "IdMat_Art = '" + art.Id_material + "'";
                     anterior = true;
                 }
             if (art.PrecioUnitario > 0)
             {
                 String[] decimales = ( art.PrecioUnitario.ToString()).Split(',');
                 if (anterior)
                 {
                     if(decimales.Length>1)
                         filtro_completo += " AND PrecioUnitario_Art = '" + decimales[0] + "." + decimales[1] + "'";
                     else
                         filtro_completo += " AND PrecioUnitario_Art = '" + decimales[0] +"'";
                 }

                 else
                 {
                     if (decimales.Length > 1)
                         filtro_completo += "PrecioUnitario_Art = '" + decimales[0] + "." + decimales[1] + "'";
                     else
                         filtro_completo += "PrecioUnitario_Art = '" + decimales[0] +"'";
                     anterior = true;
                 }
             }
             ////ESTADO
          if (art.Estado)
            {
                if (anterior)
                    filtro_completo += " AND Estado_Art = 'TRUE'";
                else
                {
                    anterior = true;
                    filtro_completo += "Estado_Art = 'TRUE'";
                }
            }
             else
            {
                if (anterior)
                    filtro_completo += " AND Estado_Art = 'FALSE'";
                else
                {
                    anterior = true;
                    filtro_completo += "Estado_Art = 'FALSE'";
                }
            }
              


            if (art.Stock > -1)
                if (anterior)
                    filtro_completo += " AND Stock_Art = '" + art.Stock + "'";
                else
                {
                    anterior = true;
                    filtro_completo += "Stock_Art = '" + art.Stock + "'";
                }


           if (art.Descripcion != null)
                 if (anterior)
                     filtro_completo += " AND Descripcion_Art = '" + art.Descripcion + "'";
                 else
                 {
                     anterior = true;
                     filtro_completo += "Descripcion_Art = '" + art.Descripcion + "'";
                 }
             if (art.FechaIngreso != null)
                 if (anterior)
                     filtro_completo += " AND FechaIngreso_Art = '" + art.FechaIngreso + "'";
                 else
                 {
                     anterior = true;
                     filtro_completo += "FechaIngreso_Art = '" + art.FechaIngreso + "'";
                 }
            ///ACA VA EL SWITCH del ORDEN
            switch (orden)
            {
                case 0:
                    filtro_completo += " ORDER BY Id_Art ASC";
                    break;
                case 1:
                    filtro_completo += " ORDER BY IdCat_Art ASC";
                    break;
                case 2:
                    filtro_completo += " ORDER BY IdMat_Art ASC";
                    break;
                case 3:
                    filtro_completo += " ORDER BY Stock_Art ASC";
                    break;
                case 4:
                    filtro_completo += " ORDER BY PrecioUnitario_Art ASC";
                    break;
                case 5:
                    filtro_completo += " ORDER BY Estado_Art ASC";
                    break;
                case 6:
                    filtro_completo += " ORDER BY date ASC";
                    break;
                case 7:
                    filtro_completo += " ORDER BY Nombre_Art ASC";
                    break;
                default:
                    filtro_completo += " ORDER BY Id_Art ASC";
                    break;
            }
            if (anterior)
                return dao.filtrarArticulo(filtro_completo);
            return dao.filtrarArticulo("SELECT * FROM Articulos");
        }
    ///Luego hacer el dao requerido
        public DataTable getMateriales()
        {
            return dao.ObtenerMateriales();
        }
        public DataTable getCategorias()
        {
            return dao.ObtenerCategorias();
        }
    
    }
}
