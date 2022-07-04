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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private void CargarTabla()
        {
            NegocioUsuario neg = new NegocioUsuario();
            GridView1.DataSource = neg.getTablaUs();
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
            }
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            CargarTabla();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            NegocioUsuario neg = new NegocioUsuario();
            if(!neg.eliminarUs(((Label)GridView1.Rows[e.RowIndex].FindControl("label_DNI")).Text))
            {
                lblLeyenda.Text = "no se pudo eliminar";
            }
            else
            {
                lblLeyenda.Text = "Se eliminó con exito";
                lblLeyenda.ForeColor=System.Drawing.Color.Green;
            }
            CargarTabla();


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            CargarTabla();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            NegocioUsuario neg = new NegocioUsuario();
            Usuario user = new Usuario();
            user.DNI_Us = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label12")).Text.ToString();
            user.Usuario_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Usuario")).Text.ToString();
            user.Email_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Email")).Text.ToString();
            user.IdProv_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Idprov")).Text.ToString();
            user.IdLoc_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_IdLoc")).Text.ToString();
            user.Domicilio_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Domicilio")).Text.ToString();
            user.Departamento_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_departamento")).Text.ToString();
            user.Contraseña_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_contrasena")).Text.ToString();
            user.Telefono_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_telefono")).Text.ToString();
            user.Nombre_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_nombre")).Text.ToString();
            user.Apellido_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_apellido")).Text.ToString();
            user.UrlImagen_Us = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_url")).Text.ToString();
            user.FechaNac_Us = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_fecha")).Text.ToString());
            user.Tipo_Us = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_tipo")).Text.ToString());
            neg.actualizarUs(user);
            GridView1.EditIndex = -1;
            CargarTabla();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            NegocioUsuario neg = new NegocioUsuario();
            GridView1.DataSource = neg.getFiltroUs(ddlOrdenar.SelectedValue);
            GridView1.DataBind();
        }

        protected void ddlOrdenar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CargarTabla();
        }
        protected void lbRegistrarse_Click(object sender, EventArgs e)
        {

        }

        protected void lbCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;

            Response.Redirect("~/Forms/Inicio.aspx");
        }
    }
}