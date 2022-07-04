using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Drawing;

namespace Vista.Forms
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        NegocioUsuario NegUser = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_IniciarSesion_Click(object sender, EventArgs e)
        {
            if (NegUser.ExisteEmail(txt_Mail.Text) == true && NegUser.UsuarioEstado(txt_Mail.Text) == true)
            {
                if (NegUser.CoincideContraseña(txt_Mail.Text, txt_Contraseña.Text) == true)
                {
                    if (NegUser.UserActivo(txt_Mail.Text) == true)
                    {
                      Session["usuario"] = NegUser.getUs(txt_Mail.Text);
                        if (NegUser.IsAdmin(NegUser.getUs(txt_Mail.Text)))
                            Response.Redirect("AdminReportes.aspx");
                        else
                             Session["carrito"] = null;
                             Response.Redirect("Usuario.aspx");
                    }
                    else
                    {
                        lblMensaje.Text = "Actualmente el Usuario se encuentra Deshabilitado";
                        lblMensaje.ForeColor = Color.Red;
                        txt_Mail.Text = "";
                    }
                }
                else
                {
                    lblMensaje.Text = "CONTRASEÑA INCORRECTA";
                    lblMensaje.ForeColor = Color.Red;
                }
            }
            else
            {
                lblMensaje.Text = "Email INVÁLIDO";
                lblMensaje.ForeColor = Color.Red;
                txt_Mail.Text = "";
            }
        }
    }
}