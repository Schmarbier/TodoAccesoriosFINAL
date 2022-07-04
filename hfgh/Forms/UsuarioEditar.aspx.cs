using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using Entidades;
using Negocio;

namespace Vista.Forms
{
    public partial class UsuarioEditar : System.Web.UI.Page
    {
        NegocioProvincia negProv = new NegocioProvincia();
        NegocioLocalidades negLoc = new NegocioLocalidades();
        NegocioUsuario negUser = new NegocioUsuario();

        private void LlenarTXTs()
        {

            txt_Usuario.Text = ((Usuario)Session["usuario"]).Usuario_Us;
            txt_Email.Text = ((Usuario)Session["usuario"]).Email_Us;
            txt_Contraseña.Text = ((Usuario)Session["usuario"]).Contraseña_Us;
            txt_nombre.Text = ((Usuario)Session["usuario"]).Nombre_Us;
            txt_apellido.Text = ((Usuario)Session["usuario"]).Apellido_Us;
            txt_dni.Text = ((Usuario)Session["usuario"]).DNI_Us;
            txt_telefono.Text = ((Usuario)Session["usuario"]).Telefono_Us;
            txt_Domicilio.Text = ((Usuario)Session["usuario"]).Domicilio_Us;
            txt_Departamento.Text = ((Usuario)Session["usuario"]).Departamento_Us;
        }

        protected void LlenarAños()
        {
            for (int i = 1940; i <= 2022; i++)
            {
                ddlAños.Items.Add(i.ToString());

            }
            ddlAños.SelectedValue = ((Usuario)Session["usuario"]).FechaNac_Us.Year.ToString();
        }

        protected void LlenarMeses()
        {
            for (int i = 1; i <= 12; i++)
            {
                ddlMeses.Items.Add(i.ToString());
            }
            ddlMeses.SelectedValue = ((Usuario)Session["usuario"]).FechaNac_Us.Month.ToString();

        }

        protected void LlenarDias()
        {
            ddlDias.Items.Clear();

            int dias = DateTime.DaysInMonth(Convert.ToInt32(ddlAños.SelectedValue), Convert.ToInt32(ddlMeses.SelectedValue));

            for (int i = 1; i <= dias; i++)
            {
                ddlDias.Items.Add(i.ToString());
            }
            ddlDias.SelectedValue = ((Usuario)Session["usuario"]).FechaNac_Us.Day.ToString();
        }

        protected void LlenarLocalidad()
        {
            ddlLocalidad.Items.Clear();

            SqlDataReader dr = negLoc.cargarDDL(ddlProvincia.SelectedValue);

            while (dr.Read()) ddlLocalidad.Items.Add(new ListItem(dr["Nombre_Loc"].ToString(), dr["Id_Loc"].ToString()));
            
        }

        protected void LlenarDDLs()
        {
            LlenarAños();
            LlenarMeses();
            LlenarDias();

            SqlDataReader dr = negProv.cargarDDL();

            while (dr.Read()) ddlProvincia.Items.Add(new ListItem(dr["Nombre_Prov"].ToString().Trim(), dr["Id_Prov"].ToString().Trim()));
            ddlProvincia.SelectedValue = ((Usuario)Session["usuario"]).IdProv_Us.Trim();

            LlenarLocalidad();
        }

        protected bool CheckRepetido()
        {
            if (!negUser.UsuarioRepetido("Usuario_Us = '" + txt_Usuario.Text.Trim() + "'"))
            {
                lblResultadoUs.Text = "Usuario ya ingresado! ingrese otro.";
                return false;
            }
            if (!negUser.UsuarioRepetido("DNI_Us = '" + txt_dni.Text.Trim() + "'")) 
            {
                lblResultadoDNI.Text = "DNI ya ingreado! ingrese otro.";
                return false;
            }
            if (!negUser.UsuarioRepetido("Email_Us = '" + txt_Email.Text.Trim() + "'"))
            {
                lblResultadoEmail.Text = "Email ya ingresado! ingrese otro.";
                return false;
            }
            return true;
        }

        protected void Limpiartxt()
        {
            lblResultado.Text = "";
            lblResultadoDNI.Text = "";
            lblResultadoEmail.Text = "";
            lblResultadoUs.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTXTs();
                LlenarDDLs();
                ddlLocalidad.SelectedValue = ((Usuario)Session["usuario"]).IdLoc_Us.Trim();
                Limpiartxt();
            }
        }

        protected void ddlAños_SelectedIndexChanged(object sender, EventArgs e)
        {
            LlenarDias();
        }

        protected void ddlMeses_SelectedIndexChanged(object sender, EventArgs e)
        {
            LlenarDias();
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            LlenarLocalidad();
        }

        protected bool ActualizarUser()
        {
            Usuario usuario = new Usuario();
            usuario.DNI_Us = txt_dni.Text.Trim();
            usuario.Usuario_Us = txt_Usuario.Text.Trim();
            usuario.Email_Us = txt_Email.Text.Trim();
            usuario.IdProv_Us = ddlProvincia.SelectedValue;
            usuario.IdLoc_Us = ddlLocalidad.SelectedValue;
            usuario.Domicilio_Us = txt_Domicilio.Text.Trim();
            usuario.Departamento_Us = txt_Departamento.Text.Trim();
            usuario.Contraseña_Us = txt_Contraseña.Text.Trim();
            usuario.Telefono_Us = txt_telefono.Text.Trim();
            usuario.Nombre_Us = txt_nombre.Text.Trim();
            usuario.Apellido_Us = txt_apellido.Text.Trim();
                
                    // CHEQUEO SI HAY UNA IMAGEN PARA ASÍ LUEGO SI LO HAY, LO GUARDO.
                if(file_image.HasFile == true)
                {
                    string strFolder = Server.MapPath("./Imagenes/Usuarios/");
                    string strFileName = "user-" + ((Usuario)Session["usuario"]).DNI_Us;
                    string filePath = strFolder + strFileName + ".jpg";

                    if (!Directory.Exists(strFolder))
                    {
                        Directory.CreateDirectory(strFolder);
                    }

                    ((Usuario)Session["usuario"]).UrlImagen_Us = "Forms/Imagenes/Usuarios/" + strFileName;
                    file_image.PostedFile.SaveAs(filePath);
                }

            usuario.UrlImagen_Us = ((Usuario)Session["usuario"]).UrlImagen_Us;
            usuario.FechaNac_Us = DateTime.Today;


            if (negUser.actualizarUs(usuario))
            {
                Session["usuario"] = usuario;
                return true;
            }
            return false;
                
        }
        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            if (CheckRepetido())
            {
                if (ActualizarUser())
                {
                    lblResultado.ForeColor = System.Drawing.Color.Green;
                    lblResultado.Text = "Usuario editado con Exito!";
                }
            }

        }
    }
}