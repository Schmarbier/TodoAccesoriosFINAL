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
    public partial class Inicio : System.Web.UI.Page
    {
        NegocioArticulo neg = new NegocioArticulo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) cargarTodo();
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (txtNobreArt.Text.Trim() != "")
            {
                ListView1.DataSource = neg.getConsultaBuscar(txtNobreArt.Text);
                ListView1.DataBind();
                lblResultados.Text = ListView1.Items.Count().ToString();
                reiniciar();

            }
            else
            {
                cargarTodo();
                reiniciar();
            }
        }

        protected void btnQuitar_Click(object sender, EventArgs e)
        {
            cargarTodo();
            reiniciar();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            String filtroCategoria = rbCategoria.SelectedValue;
            String filtroMaterial = rbMaterial.SelectedValue;
            String pMin = txtPrecio1.Text;
            String pMax = txtPrecio2.Text;
            String orden = ddlOrden.SelectedValue;
            ListView1.DataSource = neg.getFiltro(filtroCategoria, filtroMaterial, pMin, pMax, orden);
            ListView1.DataBind();
            lblResultados.Text = ListView1.Items.Count().ToString();
        }

        protected void btnVer_Command1(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "comandoVer")
            {
                String datos = e.CommandArgument.ToString();
                String[] division = datos.Split('-');
                String id = division[0];
                String url = division[1];
                String nombre = division[2];
                String precio = division[3];
                Tabla tabla = new Tabla();
                Session["producto"] = null;
                Session["producto"] = tabla.crearTabla();
                tabla.agregarFilas((DataTable)Session["producto"], id, url, nombre, precio);
                Response.Redirect("Producto.aspx?id=" + id);
            }
        }

        protected void reiniciar()
        {
            rbCategoria.ClearSelection();
            rbMaterial.ClearSelection();
            txtPrecio1.Text = "";
            txtPrecio2.Text = "";
            txtNobreArt.Text = "";
        }

        protected void cargarTodo()
        {
            ListView1.DataSource = neg.getTodos();
            ListView1.DataBind();
            lblResultados.Text = neg.getTodos().Rows.Count.ToString();
        }

        protected void btnVer_Command(object sender, CommandEventArgs e)
        {

        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
                
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void ListView1_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.cargarTodo();
      
        }
    }
}