using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Vista.Forms
{
    public partial class PaginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"] != null) // SI HAY UN USUARIO CON LA SESION INICIADA
            {   
                    // CAMBIO EL HYPER LINK, EL TEXTO Y LA REDIRECCION HACIA EL PERFIL
                hlIniciarSesion.Text = "Bienvend@ " + ((Usuario)Session["usuario"]).Usuario_Us + "!";
                hlIniciarSesion.NavigateUrl = "~/Forms/Usuario.aspx";

                lbRegistrarse.Text = "Cerrar Sesión";
                lbRegistrarse.PostBackUrl = "";
            }
            else // SI NO HAY UN USUARIO CON LA SESION INICIADA
            {
                    // CAMBIO EL HYPER LINK, EL TEXTO Y LA REDIRECCION A INICIAR SESION
                hlIniciarSesion.Text = "Iniciar Sesión";
                hlIniciarSesion.NavigateUrl = "~/Forms/IniciarSesion.aspx";

                lbRegistrarse.Text = "Registrarse";
                lbRegistrarse.PostBackUrl = "~/Forms/Registrarse.aspx";
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