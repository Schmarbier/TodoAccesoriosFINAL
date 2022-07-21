using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
namespace Vista.Forms
{
    public partial class AdminProductos : System.Web.UI.Page
    {
        private void CargarTabla()
        {
            NegocioArticulo neg = new NegocioArticulo();
            GridView1.DataSource = neg.getTablaArt();

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

        protected void Button2_Click(object sender, EventArgs e)
        {

            
        }

        protected void btn_2_Click(object sender, EventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            Articulo art = new Articulo();
            if (!txt_stock.Text.Trim().Equals(""))
            {
                art.Stock = Convert.ToInt32( txt_stock.Text);
            }
            if (CheckBox1.Checked)
            {
                art.Estado = true;
            }
            GridView1.DataSource = neg.getFiltroArt(art, Convert.ToInt32(ddl_order.SelectedValue));
            GridView1.DataBind();
        }

        protected void btn_1_Click(object sender, EventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            Articulo art = new Articulo();

            ////Nombre
            ///
                if (!txt_Nombre.Text.Trim().Equals(""))
                {
                    art.Nombre = txt_Nombre.Text;
                }

            ///ID ART
                if (!txt_idArt.Text.Trim().Equals(""))
                {
                    art.Id = txt_idArt.Text;
                }
            ///DESCRIPCION
                if (!txt_descripcion.Text.Trim().Equals(""))
                {
                    art.Descripcion = txt_descripcion.Text;
                }
            ///ID ARTICULO
                if (!txt_idCat.Text.Trim().Equals(""))
                {
                    art.Id_categoria = txt_idCat.Text;
                }
            ///ID MATERIAL
                if (!txt_idMat.Text.Trim().Equals(""))
                {
                    art.Id_material = txt_idMat.Text;
                }
            ///FECHA INGRESO
                if (!(txt_fechaIngreso.Text.Trim().Equals("")))
                {
                        art.FechaIngreso = (Convert.ToDateTime(txt_fechaIngreso.Text));
                }
            ///ESTADO
                if (CheckBox1.Checked)
                {
                    art.Estado = true;
                }
            ///PRECIO UNITARIO
                try
                {
                art.PrecioUnitario = Convert.ToDecimal(txt_pu.Text);
                }
                catch
                {
                    
                }
            ///STOCK
            try
            {
                art.Stock = Convert.ToInt32(txt_stock.Text);
            }
            catch
            {

            }
            GridView1.DataSource = neg.getFiltroArt(art,Convert.ToInt32( ddl_order.SelectedValue));
                GridView1.DataBind();
               /// if (GridView1.Rows.Count < 1)
               ///     CargarTabla();
            }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            Articulo art = new Articulo();
            if (!txt_Nombre.Text.Trim().Equals(""))
            {
                art.Nombre = txt_Nombre.Text;
            }
            if (CheckBox1.Checked)
            {
                art.Estado = true;
            }
            GridView1.DataSource = neg.getFiltroArt(art, Convert.ToInt32(ddl_order.SelectedValue));
            GridView1.DataBind();
        }

        protected void btn_3_Click(object sender, EventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            Articulo art = new Articulo();
            if (!txt_idCatAgregar.Text.Trim().Equals(""))
            {
                art.Id = txt_idArtAgregar.Text;
            }
            if (!txt_idCatAgregar.Text.Trim().Equals(""))
            {
                art.Id_categoria = txt_idCatAgregar.Text;
            }
            if (!txt_idMatAgregar.Text.Trim().Equals(""))
            {
                art.Id_material = txt_idMatAgregar.Text;
            }
            if (!txt_puAgregar.Text.Trim().Equals(""))
            {
                try
                {
                    String[] decimales = (txt_puAgregar.Text).Split(',');
                    art.PrecioUnitario = Convert.ToInt32(decimales[0]) + Convert.ToDecimal(decimales[1]) / 100;
                }
                catch
                {
                    art.PrecioUnitario = 0;
                }
                art.PrecioUnitario = Convert.ToDecimal(txt_puAgregar.Text);
                
            }
            if (!txt_nombreAgregar.Text.Trim().Equals(""))
            {
                art.Nombre = txt_nombreAgregar.Text;
            }            
            if (!txt_descripcionAgregar.Text.Trim().Equals(""))
            {
                art.Descripcion = txt_descripcionAgregar.Text;
            }
            art.Url = "por ahora nada";
                art.Estado = true;
            if (!neg.agregarArt(art))
                lbl_leyenda.Text = "El articulo no se pudo Agregar, revise los campos e intente nuevamente";
            else
            {
                lbl_leyenda.Text = "El articulo  se pudo Agregar exitosamente";
            }
            CargarTabla();
        }


        protected void btn_agregar(object sender, EventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            Articulo art = new Articulo();
            try
            {
                ////Nombre
                if (!txt_nombreAgregar.Text.Trim().Equals(""))
                {
                    art.Nombre = txt_nombreAgregar.Text;
                }
                ///ID ART
                if (!txt_idArtAgregar.Text.Trim().Equals(""))
                {
                    art.Id = txt_idArtAgregar.Text;
                }
                ///DESCRIPCION
                if (!txt_descripcionAgregar.Text.Trim().Equals(""))
                {
                    art.Descripcion = txt_descripcionAgregar.Text;
                }
                ///ID ARTICULO
                if (!txt_idCatAgregar.Text.Trim().Equals(""))
                {
                    art.Id_categoria = txt_idCatAgregar.Text;
                }
                ///ID MATERIAL
                if (!txt_idMatAgregar.Text.Trim().Equals(""))
                {
                    art.Id_material = txt_idMatAgregar.Text;
                }
                ///FECHA INGRESO
                art.FechaIngreso = DateTime.Now;
                ///ESTADO
                art.Estado = true;
                ///PRECIO UNITARIO
                if (!(txt_puAgregar.Text.Trim().Equals("")))
                    try
                    {
                        art.PrecioUnitario = Convert.ToDecimal(txt_puAgregar.Text);
                    }
                    catch
                    {

                    }
                ///URL
                art.Url = "~/Forms/Imagenes/Articulos/1.jpg";
                if (!neg.agregarArt(art))
                    lbl_leyenda.Text = "El articulo no se pudo Agregar, revise los campos e intente nuevamente";
                else
                {
                    lbl_leyenda.Text = "El articulo  se pudo Agregar exitosamente";
                }
            }
            catch 
            {
                lbl_leyenda.Text = "El articulo no se pudo Agregar, revise los campos e intente nuevamente";
            }
        }

        protected void btn_limpiarFiltro(object sender, EventArgs e)
        {
            txt_descripcion.Text = null;
            txt_fechaIngreso.Text = null;
            txt_Nombre.Text = null;
            txt_pu.Text = null;
            txt_idMat.Text = null;
            txt_idArt.Text = null;
            txt_idCat.Text = null;
            CargarTabla();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            NegocioArticulo neg = new NegocioArticulo();
            if (!neg.eliminarArt(((Label)GridView1.Rows[e.RowIndex].FindControl("Label_IDART")).Text))
            {
                lblLeyenda.Text = "no se pudo eliminar";
            }
            else
            {
                lblLeyenda.Text = "Se eliminó con exito";
                lblLeyenda.ForeColor = System.Drawing.Color.Green;
            }
            CargarTabla();

        }



        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CargarTabla();
        }


        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            CargarTabla();
        }



        protected void btn_filtro(object sender, EventArgs e)
        {
            PanelFiltro.Visible = true;
            PanelAgregar.Visible = false;
        }

        protected void btn_Agregar(object sender, EventArgs e)
        {
            PanelAgregar.Visible = true;
            PanelFiltro.Visible = false;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
           
            try
            {
                NegocioArticulo neg = new NegocioArticulo();
                Articulo art = new Articulo();
                art.Id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label_IDART")).Text.ToString();
                art.Id_material = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_IdMat")).Text.ToString();
                art.Id_categoria = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_IdCat")).Text.ToString();
                art.Nombre = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_Nom")).Text.ToString();
                art.Descripcion = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_Des")).Text.ToString();
                art.Url = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_URL")).Text.ToString();
                art.Stock = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_Stock")).Text);
                art.PrecioUnitario = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_PU")).Text);
                art.FechaIngreso = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox_Edit_FI")).Text);
                art.Estado = Convert.ToBoolean(((TextBox)GridView1.Rows[e.RowIndex].FindControl("CheckBox_Edit_Estado")));
                neg.actualizarArt(art);
            }
            catch
            {
                lblLeyenda.Text = "Se produjo un error en la modificación de los Articulos";
            }
            GridView1.EditIndex = -1;
            CargarTabla();
        }
        protected void lbRegistrarse_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;


            Response.Redirect("~/Forms/Inicio.aspx");
        }

        protected void lbCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Response.Redirect("~/Forms/Inicio.aspx");
        }
    }
    }