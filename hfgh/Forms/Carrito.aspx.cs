using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vista.Forms
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Carrito"] == null)
                {
                    lblNoProductos.Text = "No hay productos seleccionados!";
                }
                else
                {
                    grdCarrito.DataSource = Session["carrito"];
                    grdCarrito.DataBind();
                    lblTotal.Text = Convert.ToString(CalcularTotal((DataTable)Session["carrito"]));
                }
                lblError.Text = "";
            }
        }


        protected void btnVaciar_Click1(object sender, EventArgs e)
        {
            Session["carrito"] = null;
            grdCarrito.DataSource = Session["carrito"];
            grdCarrito.DataBind();
            lblTotal.Text = "0";
            lblNoProductos.Text = "No hay productos seleccionados!";
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null) { lblError.Text = "Debe estar logueado para comprar!"; }
            else Response.Redirect("DatosPago.aspx?total=" + lblTotal.Text);
        }

        public Decimal CalcularTotal(DataTable tabla)
        {
            Decimal total=0;
            foreach (DataRow fila in tabla.Rows)
            {
                total +=  Convert.ToDecimal(fila["Total"]);
            }
            return total;
        }

    }
}