using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vista.Forms
{
    public partial class Usuario1 : System.Web.UI.Page
    {
        NegocioUsuario negUsuario = new NegocioUsuario();

        private void cargarDatos()
        {
            NegocioProvincia negProv = new NegocioProvincia();
            NegocioLocalidades negLoc = new NegocioLocalidades();

            lbl_Dni.Text = ((Usuario)Session["usuario"]).DNI_Us;
            lbl_Usuario.Text = ((Usuario)Session["usuario"]).Usuario_Us;
            lbl_Email.Text = ((Usuario)Session["usuario"]).Email_Us;
            lbl_Provincia.Text = negProv.getProvinciaXid(((Usuario)Session["usuario"]).IdProv_Us);
            lbl_Localidad.Text = negLoc.getLocalidadXid(((Usuario)Session["usuario"]).IdLoc_Us);
            lbl_Domicilio.Text = ((Usuario)Session["usuario"]).Domicilio_Us;
            lbl_Departamento.Text = ((Usuario)Session["usuario"]).Departamento_Us;
            lbl_Contraseña.Text = ((Usuario)Session["usuario"]).Contraseña_Us;
            lbl_Telefono.Text = ((Usuario)Session["usuario"]).Telefono_Us;
            lbl_Nombre.Text = ((Usuario)Session["usuario"]).Nombre_Us;
            lbl_Apellido.Text = ((Usuario)Session["usuario"]).Apellido_Us;
            imgUsuario.ImageUrl = "~/" +((Usuario)Session["usuario"]).UrlImagen_Us + ".jpg";
            lbl_FechaNacimiento.Text = ((Usuario)Session["usuario"]).FechaNac_Us.ToString();

        }

        private void cargarVentas()
        {
            grdvCompras.DataSource = negUsuario.getComprasUsuario(((Usuario)Session["usuario"]).DNI_Us);
            grdvCompras.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //crearSession();
                cargarDatos();
                cargarVentas();
            }
        }
    }
}