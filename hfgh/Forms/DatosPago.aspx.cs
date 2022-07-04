using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Entidades;
using Negocio;


namespace Vista.Forms
{
    public partial class DatosPago : System.Web.UI.Page
    {
        Ventas venta = new Ventas();
        NegocioVenta negV = new NegocioVenta();
        NegocioTipoEnvio TipoEnvio = new NegocioTipoEnvio();
        NegocioProvincia pr = new NegocioProvincia();
        NegocioLocalidades loc = new NegocioLocalidades();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                //DDL TIPO ENVIO
                dr=TipoEnvio.cargarDDL();
                while (dr.Read()) ddlTipoEnvio.Items.Add(new ListItem(dr["Descripcion_TEnvio"] + "", dr["Id_TEnvio"] + ""));

                //DDL PROVINCIA
                dr = pr.cargarDDL();
                while (dr.Read()) ddlProvincia.Items.Add(new ListItem(dr["Nombre_Prov"] + "", dr["Id_Prov"] + ""));
                ddlProvincia.Items.Insert(0, new ListItem { Value = "-1", Text = "*Seleccionar provincia*" });

                //DDL LOCALIDAD
                ddlLocalidad.Items.Insert(0, new ListItem { Value = "-1", Text = "*Antes seleccione una provincia*" });
            }


        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlLocalidad.Items.Clear();
            dr = loc.cargarDDL(ddlProvincia.SelectedValue);
            while (dr.Read()) ddlLocalidad.Items.Add(new ListItem(dr["Nombre_Loc"] + "", dr["Id_Loc"] + ""));
            
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            if(Session["usuario"] == null)
            {
                venta.setUsuario("no ingresado");
            }

            venta.setUsuario(((Usuario)Session["usuario"]).Usuario_Us);
            venta.setEmailUsuario(txtEmail.Text);
            venta.setIdTipoEnvio(ddlTipoEnvio.SelectedValue);
            venta.setNombre(txtNombre.Text);
            venta.setApellido(txtApellido.Text);
            venta.setDniUsuario(txtDNI.Text);
            venta.setTelefono(txtTelefono.Text);
            venta.setDireccion(txtDomicilio.Text);
            if (txtDepartamento.Text.Trim() != "") venta.setDepartamento(txtDepartamento.Text);
            else venta.setDepartamento("Sin departamento");
            venta.setCodPostal(Convert.ToInt32(txtCP.Text));
            venta.setIdProvLoc(ddlProvincia.SelectedValue);
            venta.setFecha(DateTime.Today);
            venta.setIdLoc(ddlLocalidad.SelectedValue);
            if (txtBarrio.Text.Trim() != "") venta.setBarrio(txtBarrio.Text);
            else venta.setBarrio("Sin barrio");
            venta.setTotal(Convert.ToDecimal(Request.QueryString["total"]));

            Session["venta"] = venta;

            Response.Redirect("FormaPago.aspx");
        }

    }
}