using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;
using System.Data.SqlClient;

namespace Vista.Forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataReader dr;
        NegocioTipoEnvio TipoEnvio = new NegocioTipoEnvio();
        protected void Page_Load(object sender, EventArgs e)
        {
            dr = TipoEnvio.cargarDDL();
            while (dr.Read()) ddlTipoEnvio.Items.Add(new ListItem(dr["Descripcion_TEnvio"] + "", dr["Id_TEnvio"] + ""));
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

        protected bool RealizarCompra()
        {
            NegocioDetalleVenta negDetalle = new NegocioDetalleVenta();
            NegocioVenta negVenta = new NegocioVenta();

            DetalleVentas entDetalle = new DetalleVentas();

            /// REGISTRO LA VENTA
             //Se setea el ID del tipo de envio.
            ((Ventas)Session["venta"]).setIdTipoEnvio(ddlTipoEnvio.SelectedValue);
            if (negVenta.AgregarVent((Ventas)Session["venta"]) == false) return false;

            /// REGISTRO EL DETALLE DE VENTA

            entDetalle.NroVent_Detalle = Convert.ToInt32(negVenta.getNroVenta());
            
            foreach(DataRow row in ((DataTable)Session["carrito"]).Rows)
            {
                entDetalle.IdArt_Detalle = row["ID"].ToString();
                entDetalle.PrecioArt_Detalle = Convert.ToDecimal(row["Precio"].ToString());
                entDetalle.Cantidad_Detalle = Convert.ToInt32(row["Cantidad"].ToString());
                if (negDetalle.AgregarDetalleVenta(entDetalle) == 0) return false;
            }

            return true;
        }
        protected void VaciarTXT()
        {
            txtbox_dni.Text = "";
            txtCodSeguridad.Text = "";
            txtTitularTarjeta.Text = "";
            txt_nt.Text = "";
            txtVencimiento.Text = "";
            
        }
        protected void btnRealizar_Click(object sender, EventArgs e)
        {
            if(Panel1.Visible == true || Panel2.Visible == true || Panel3.Visible == true) /// PAGO TARJETA
            {
                if (Panel1.Visible == true) /// PAGO TARJETA
                {
                    ((Ventas)Session["venta"]).setIdTipoPago("2");
                }
                else if (Panel2.Visible == true) /// PAGO RAPIPAGO
                {
                    ((Ventas)Session["venta"]).setIdTipoPago("3");
                }
                else/// PAGO TRANSFERENCIA
                {
                    ((Ventas)Session["venta"]).setIdTipoPago("1");
                }
                if (!RealizarCompra()) lblResultado.Text = "Hubo un error";
                lblResultado.Text = "Compra realizada con exito!";
                VaciarTXT();
                return;
            }
            else
            {
                lblResultado.Text = "Selecciona un metodo de pago!";
            }


        }
    }
}