using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vista.Forms
{
    public partial class Producto : System.Web.UI.Page
    {
        NegocioArticulo negArt = new NegocioArticulo();

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            NegocioArticulo neg = new NegocioArticulo();
            lvProducto.DataSource = neg.getP(id);
            lvProducto.DataBind();
            DataTable tabla = neg.getConsultaDescripcion(id);
            lblDescripcion.Text = tabla.Rows[0][0].ToString();
            int cant = negArt.getCantidad(id);
            for (int i = 1; i<=cant; i++)
            {
                ddlCantidad.Items.Insert(i-1, new ListItem {Value=i.ToString(), Text=i.ToString() });
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Tabla tabla = new Tabla();
            if (Session["carrito"] == null) Session["carrito"] = tabla.crearTabla();

            if (tabla.chequearRepetido((DataTable)Session["carrito"], Convert.ToString(((DataTable)Session["producto"]).Rows[0][0]))==false)
            {
                String id = Convert.ToString(((DataTable)Session["producto"]).Rows[0][0]);
                String nombre = Convert.ToString(((DataTable)Session["producto"]).Rows[0][1]);
                String precio = Convert.ToString(((DataTable)Session["producto"]).Rows[0][2]);
                String cantidad = ddlCantidad.SelectedValue.ToString();
                String total = Convert.ToString(Convert.ToInt32(cantidad) * Convert.ToDecimal(precio));
                tabla.agregarFilas((DataTable)Session["carrito"], id, nombre, precio, cantidad, total);
           
                lblMensaje.Text = "El producto fue agregado al carrito!";
            }
            else lblMensaje.Text = "Este producto ya existe en el carrito!";



        }

        protected void lvProducto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }
    }
}