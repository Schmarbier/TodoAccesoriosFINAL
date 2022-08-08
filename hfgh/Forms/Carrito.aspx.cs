using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;

namespace Vista.Forms
{
    public partial class Carrito : System.Web.UI.Page
    {
        Ventas venta= new Ventas();
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


        public Decimal CalcularTotal(DataTable tabla)
        {
            Decimal total=0;
            foreach (DataRow fila in tabla.Rows)
            {
                total +=  Convert.ToDecimal(fila["Total"]);
            }
            return total;
        }
        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (Session["usuario"] == null) { lblError.Text = "Debe estar logueado para comprar!"; }

            else
            {
                venta.setUsuario(((Usuario)Session["usuario"]).Usuario_Us);
                venta.setEmailUsuario(((Usuario)Session["usuario"]).Email_Us);
                //venta.setIdTipoEnvio(ddlTipoEnvio.SelectedValue);
                venta.setNombre(((Usuario)Session["usuario"]).Nombre_Us);
                venta.setApellido(((Usuario)Session["usuario"]).Apellido_Us);
                venta.setDniUsuario(((Usuario)Session["usuario"]).DNI_Us);
                venta.setTelefono(((Usuario)Session["usuario"]).Telefono_Us);
                venta.setDireccion(((Usuario)Session["usuario"]).Domicilio_Us);
                venta.setDepartamento(((Usuario)Session["usuario"]).Departamento_Us);
                venta.setCodPostal(((Usuario)Session["usuario"]).);
                venta.setIdProvLoc(((Usuario)Session["usuario"]).IdProv_Us);
                venta.setFecha(DateTime.Today);
                venta.setIdLoc(((Usuario)Session["usuario"]).IdLoc_Us);
                if (txtBarrio.Text.Trim() != "") venta.setBarrio(txtBarrio.Text);
                else venta.setBarrio("Sin barrio");
                venta.setTotal(Convert.ToDecimal(Request.QueryString["total"]));

                Session["venta"] = venta;


                Response.Redirect("FormaPago.aspx?total=" + lblTotal.Text);

            }
        }

    }
}