using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vista.Forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btn_tarjeta_click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            btn_rp.Visible = false;
            btn_tr.Visible = false;
            btn_tc.Visible = false;
       

        }

        protected void btn_rp_pf_click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            btn_tc.Visible = false;
            btn_tr.Visible = false;
            btn_rp.Visible = false;
         
        }

        protected void btn_transferencia_click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            btn_rp.Visible = false;
            btn_tc.Visible = false;
            btn_tr.Visible = false;

        }

        protected void btn_volver(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            btn_rp.Visible = true;
            btn_tc.Visible = true;
            btn_tr.Visible = true;
        }

        protected bool RealizarCompra(string tipoPago)
        {
            NegocioDetalleVenta negDetalle = new NegocioDetalleVenta();
            NegocioVenta negVenta = new NegocioVenta();

            DetalleVentas entDetalle = new DetalleVentas();

            /// REGISTRO LA VENTA
            if(negVenta.AgregarVent((Ventas)Session["venta"]) == false) return false;

            /// REGISTRO EL DETALLE DE VENTA

            entDetalle.NroVent_Detalle = Convert.ToInt32(negVenta.getNroVenta((Ventas)Session["venta"]));
            
            foreach(DataRow row in ((DataTable)Session["carrito"]).Rows)
            {
                entDetalle.IdArt_Detalle = row["ID"].ToString();
                entDetalle.PrecioArt_Detalle = row["Precio"].ToString();
                negDetalle.AgregarDetalleVenta(entDetalle);
            }
        }

        protected void btnRealizar_Click(object sender, EventArgs e)
        {
            if(Panel1.Visible == true) /// PAGO TARJETA
            {

            }
            else if(Panel2.Visible == true) /// PAGO RAPIPAGO
            {

            }
            else if(Panel3.Visible == true) /// PAGO TRANSFERENCIA
            {

            }
            else
            {
                lblResultado.Text = "Selecciona un metodo de pago!";
            }
        }
    }
}