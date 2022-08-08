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
    public partial class Registrarse : System.Web.UI.Page
    {
        NegocioUsuario NegUser = new NegocioUsuario();
        NegocioProvincia Prov = new NegocioProvincia();
        NegocioLocalidades Loc = new NegocioLocalidades();

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (IsPostBack == false)
            {
                CargarddlProvincia();

                //INICIO DDL LOCALIDAD
                ddlLocalidad.Items.Insert(0, new ListItem { Value = "-1", Text = "--Seleccione--" });
            }
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarddlLocalidad();
        }


        protected void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            Usuario User = new Usuario();

            if (NegUser.ExisteNombreUsuario(txtNombreUSER.Text) == true)
            {
                lblMensaje.Text = "Error al crear la cuenta, nombre de usuario NO disponible";
                lblMensaje.ForeColor = Color.Red;
                LimpiarCampos();
            }
            else
            {
                if (NegUser.ExisteEmail(txtMail.Text) == true)
                {
                    lblMensaje.Text = "Error al crear la cuenta, Email NO Disponible";
                    lblMensaje.ForeColor = Color.Red;
                    LimpiarCampos();
                }
                else
                {
                    User.Nombre_Us = txtNombre.Text;
                    User.Apellido_Us = txtApellido.Text;
                    User.DNI_Us = txtDNI.Text;
                    User.FechaNac_Us = Convert.ToDateTime(txtFechaNac.Text);
                    User.Telefono_Us = txtTelefono.Text;
                    User.Email_Us = txtMail.Text;
                    User.Usuario_Us = txtNombreUSER.Text;
                    User.Contraseña_Us = txtContraseña.Text;
                    User.Domicilio_Us = txtDomicilio.Text;
                    User.IdProv_Us = ddlProvincia.SelectedValue;
                    User.IdLoc_Us = ddlLocalidad.SelectedValue;
                    if (txtDepartamento.Text.Trim() == "") User.Departamento_Us = "No vive en departamento";
                    else User.Departamento_Us = txtDepartamento.Text;
                    if (txtBarrio.Text.Trim() == "") User.Barrio_Us = "----";
                    else User.Barrio_Us = txtBarrio.Text;
                    User.Codpostal_Us = Convert.ToInt32(txtCP.Text);



                    if (NegUser.agregarUs(User) == true)
                    {
                        lblMensaje.Text = "Cuenta creada con éxito!";
                        lblMensaje.ForeColor = Color.DarkGreen;
                    }
                    else
                    {
                        lblMensaje.Text = "Error al crear la cuenta, ya existe un usuario con el DNI ingresado";
                        lblMensaje.ForeColor = Color.Red;
                    }
                    LimpiarCampos();

                }
            }

        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
        }

        public void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDNI.Text = "";
            txtFechaNac.Text = "";
            txtTelefono.Text = "";
            txtMail.Text = "";
            txtNombreUSER.Text = "";
            txtContraseña.Text = "";
            txtRepetirContraseña.Text = "";
            txtDomicilio.Text = "";
            CargarddlProvincia();
            CargarddlLocalidad();
        }



        public void CargarddlProvincia()
        {
            ddlProvincia.DataSource = Prov.cargarDDL();
            ddlProvincia.DataTextField = "Nombre_Prov";
            ddlProvincia.DataValueField = "Id_Prov";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem { Value = "-1", Text = "--Seleccionar Provincia--" });
        }

        public void CargarddlLocalidad()
        {
            ddlLocalidad.DataSource = Loc.cargarDDL(ddlProvincia.SelectedValue);
            ddlLocalidad.DataTextField = "Nombre_Loc";
            ddlLocalidad.DataValueField = "Id_Loc";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem { Value = "-1", Text = "--Seleccione--" });
        }
    }
}