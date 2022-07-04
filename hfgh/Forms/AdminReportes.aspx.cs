using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
namespace Vista.Forms
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private void CargarTabla()
        {
            NegocioVenta neg = new NegocioVenta();
            GridView1.DataSource = neg.GetTablaVent();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usr = new Usuario();
            NegocioUsuario neg = new NegocioUsuario();
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    usr = Session["usuario"] as Usuario;
                    if (!neg.IsAdmin(usr))
                        Response.Redirect("Inicio.aspx");
                }
                CargarTabla();
                llenarAños();
                llenarMes();
                llenarDias();
            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            CargarTabla();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            Ventas ven = new Ventas();
            ven.setNroVenta(Convert.ToInt32(((Label)GridView1.Rows[e.RowIndex].FindControl("label_nroVenta")).Text.ToString()));
            ven.setDniUsuario(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_DNI")).Text.ToString());
            ven.setIdTipoEnvio(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_ID_TE")).Text.ToString());
            ven.setIdLoc(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_IdLoc")).Text.ToString());
            ven.setIdProvLoc(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_IdProv")).Text.ToString());
            ven.setIdTipoPago(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_IdTP")).Text.ToString());
            ven.setUsuario(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Usuario")).Text.ToString());
            ven.setEmailUsuario(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Email")).Text.ToString());
            ven.setDireccion(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_direccion")).Text.ToString());
            ven.setTelefono(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_telefono")).Text.ToString());
            ven.setTotal(Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Total")).Text.ToString()));
            ven.setFecha(Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Fecha")).Text.ToString()));
            if(neg.ActualizarVent(ven))
            {
                ///
            }
            GridView1.EditIndex = -1;
            CargarTabla();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           

        }

        protected void btn_hoy_Click(object sender, EventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            GridView1.DataSource = neg.FiltrarPorHoy();
            GridView1.DataBind();
        }

        protected void btn_7_dias_Click(object sender, EventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            GridView1.DataSource = neg.FiltrarUltimos7dias();
            GridView1.DataBind();
        }

        protected void btn_15_dias_Click(object sender, EventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            GridView1.DataSource = neg.FiltrarUltimos15dias();
            GridView1.DataBind();
        }

        protected void btn_30_dias_Click(object sender, EventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            GridView1.DataSource = neg.FiltrarUltimos30dias();
            GridView1.DataBind();
        }

        protected void btn_buscar0_Click(object sender, EventArgs e)
        {
            NegocioVenta neg = new NegocioVenta();
            string fecha1 = ddlMesD.SelectedItem.ToString()  + "/" + ddlDiaD.SelectedItem.ToString()   + "/" + ddlAñoD.SelectedItem.ToString();
            string fecha2 = ddlMesH.SelectedItem.ToString()  + "/" + ddlDiaH.SelectedItem.ToString()  + "/" + ddlAñoH.SelectedItem.ToString();
            GridView1.DataSource = neg.FiltrarCustom(fecha1, fecha2);
            GridView1.DataBind();
        }

        void llenarAños()
        {
            //LLENAR DDLS AÑO
            for (int i = 2000; i <= 2022; i++)
            {
                ddlAñoD.Items.Add(i.ToString());
                ddlAñoH.Items.Add(i.ToString());
                
            }
            ddlAñoD.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;
            ddlAñoH.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;
        }

        void llenarMes()
        {
            //LLENAR DDLS MES
            for (int i = 1; i <= 12; i++)
            {
                ddlMesD.Items.Add(i.ToString());
                ddlMesH.Items.Add(i.ToString());
            }
            ddlMesD.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true;
            ddlMesH.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true;

        }

        void llenarDias()
        {
            ddlDiaD.Items.Clear();
            ddlDiaH.Items.Clear();


            int diasD = DateTime.DaysInMonth(Convert.ToInt32(ddlAñoD.SelectedValue), Convert.ToInt32(ddlMesD.SelectedValue));
            int diasH = DateTime.DaysInMonth(Convert.ToInt32(ddlAñoH.SelectedValue), Convert.ToInt32(ddlMesH.SelectedValue));

            //Fill days
            for (int i = 1; i <= diasD; i++)
            {
                ddlDiaD.Items.Add(i.ToString());
            }
            for (int i = 1; i <= diasH; i++)
            {
                ddlDiaH.Items.Add(i.ToString());
            }

            ddlDiaD.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;
            ddlDiaH.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;
        }

        protected void ddlMesD_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarDias();
        }

        protected void ddlMesH_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarDias();
        }

        protected void ddlAñoD_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarDias();
        }

        protected void ddlAñoH_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarDias();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }



        protected void verMas(object sender, GridViewCommandEventArgs e)
        {
            NegocioDetalleVenta neg = new NegocioDetalleVenta();

            if(e.CommandName== "verMas")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                string nroVenta = ((Label)GridView1.Rows[fila].FindControl("label_nroVenta")).Text;
                lblLeyenda.Text = "Detalle Venta";
                GridViewDetalleVenta.DataSource=  neg.GetDetalleVent(Convert.ToInt32(nroVenta));
                GridViewDetalleVenta.DataBind();

            }
        }
        protected void lbRegistrarse_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;

            hlIniciarSesion.Text = "Iniciar Sesión";
            hlIniciarSesion.NavigateUrl = "~/Forms/IniciarSesion.aspx";

            lbRegistrarse.Text = "Registrarse";
            lbRegistrarse.PostBackUrl = "~/Forms/Registrarse.aspx";

            Response.Redirect("~/Forms/Inicio.aspx");
        }
    }
}