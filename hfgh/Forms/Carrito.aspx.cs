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
            if (Session["carrito"] != null)
            {
                grdCarrito.DataSource = (DataTable)Session["carrito"];
                grdCarrito.DataBind();
                lblTotal.Text= Convert.ToString(CalcularTotal((DataTable)Session["carrito"]));
            }
        }

        protected void BtnVaciar_Click(object sender, EventArgs e)
        {
            Session["carrito"] = null;
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatosPago.aspx");
        }

        public Decimal CalcularTotal(DataTable tabla)
        {
            Decimal total=0;
            foreach (DataRow fila in tabla.Rows)
            {
                total +=  Convert.ToDecimal(fila["Precio"]);
            }
            return total;
        }
    }
}