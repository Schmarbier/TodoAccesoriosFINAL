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

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            NegocioArticulo neg = new NegocioArticulo();
            lvProducto.DataSource = neg.getP(id);
            lvProducto.DataBind();
            DataTable s = neg.getConsultaDescripcion(id);
            lblDescripcion.Text = s.Rows[0][0].ToString();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Tabla tabla = new Tabla();
            if (Session["carrito"] == null) Session["carrito"] = tabla.crearTabla();

            if (tabla.chequearRepetido((DataTable)Session["carrito"], Convert.ToString(((DataTable)Session["producto"]).Rows[0][0]))==false)
            {
                DataRow dr = ((DataTable)Session["carrito"]).NewRow();
                dr["id"] = ((DataTable)Session["producto"]).Rows[0][0];
                dr["Nombre"] = ((DataTable)Session["producto"]).Rows[0][1];
                dr["Precio"] = ((DataTable)Session["producto"]).Rows[0][2];
                ((DataTable)Session["carrito"]).Rows.Add(dr);
                lblMensaje.Text = "El producto fue agregado al carrito!";
            }
            else lblMensaje.Text = "Este producto ya existe en el carrito!";



        }
    }
}