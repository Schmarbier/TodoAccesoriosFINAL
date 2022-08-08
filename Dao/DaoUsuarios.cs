using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    public class DaoUsuarios
    {
        AccesoDatos ad = new AccesoDatos();

        public Usuario getUsuarioXEmail(Usuario user)
        {
            DataTable tabla = ad.ObtenerTabla("Usuarios", "Select DNI_Us,Usuario_Us, Contraseña_Us, Email_Us, Telefono_Us, Nombre_Us, Apellido_Us,IdProv_Us,IdLoc_Us, Domicilio_Us, Departamento_Us, Tipo_Us, UrlImagen_Us,FechaNac_Us,Estado, Barrio_Us, CodPostal_Us FROM Usuarios WHERE Email_Us = '"+ user.Email_Us + "'" );
                
            user.DNI_Us = tabla.Rows[0][0].ToString();
            user.Usuario_Us = tabla.Rows[0][1].ToString();
            user.Contraseña_Us = tabla.Rows[0][2].ToString();
            user.Email_Us = tabla.Rows[0][3].ToString();
            user.Telefono_Us = tabla.Rows[0][4].ToString();
            user.Nombre_Us = tabla.Rows[0][5].ToString();
            user.Apellido_Us = tabla.Rows[0][6].ToString();
            user.IdProv_Us = tabla.Rows[0][7].ToString();
            user.IdLoc_Us = tabla.Rows[0][8].ToString();
            user.Domicilio_Us = tabla.Rows[0][9].ToString();
            user.Departamento_Us = tabla.Rows[0][10].ToString();
            user.Tipo_Us= Convert.ToInt32(tabla.Rows[0][11].ToString());
            user.UrlImagen_Us = tabla.Rows[0][12].ToString();
            user.FechaNac_Us = Convert.ToDateTime(tabla.Rows[0][13].ToString());
            user.Estado = Convert.ToBoolean(tabla.Rows[0][14].ToString());
            user.Barrio_Us = tabla.Rows[0][15].ToString();
            user.Codpostal_Us = Convert.ToInt32(tabla.Rows[0][16].ToString());
            return user;
        }

        public DataTable getTablaUsuario()
        {

           DataTable tabla = ad.ObtenerTabla("Usuarios", "select DNI_Us,Usuario_Us,Email_Us,IdProv_Us,IdLoc_Us,Domicilio_Us,Departamento_Us,Contraseña_Us,Telefono_Us,Nombre_Us,Apellido_Us,UrlImagen_Us,FechaNac_Us,Tipo_Us,Estado,Barrio_Us, CodPostal_Us  from Usuarios");

            return tabla;
        }

        public bool ExisteUsuario(Usuario user)
        {
            return ad.Existe("SELECT * FROM Usuarios WHERE DNI_us ='" + user.DNI_Us + "'");
        }

        public bool ExisteXFiltro(string filtro)
        {
            return ad.Existe("SELECT * FROM Usuarios WHERE " + filtro);
        }

        public int EliminarUsuario(Usuario user)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@DNI", SqlDbType.Char);
            parametro.Value = user.DNI_Us;
            return ad.EjecutarProcAlmacenado(cmd, "SPEliminarUsuario");
        }

        public int AgregarUsuario(Usuario user)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@DNI", SqlDbType.Char);
            parametro.Value = user.DNI_Us;
            parametro = cmd.Parameters.Add("@USUARIO", SqlDbType.VarChar);
            parametro.Value = user.Usuario_Us;
            parametro = cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar);
            parametro.Value = user.Email_Us;
            parametro = cmd.Parameters.Add("@PROV", SqlDbType.Char);
            parametro.Value = user.IdProv_Us;
            parametro = cmd.Parameters.Add("@LOC", SqlDbType.Char);
            parametro.Value = user.IdLoc_Us;
            parametro = cmd.Parameters.Add("@DOMICILIO", SqlDbType.VarChar);
            parametro.Value = user.Domicilio_Us;
            parametro = cmd.Parameters.Add("@DEPARTAMENTO", SqlDbType.VarChar);
            parametro.Value = user.Departamento_Us;
            parametro = cmd.Parameters.Add("@CONTRASEÑA", SqlDbType.VarChar);
            parametro.Value = user.Contraseña_Us;
            parametro = cmd.Parameters.Add("@TELEFONO", SqlDbType.Char);
            parametro.Value = user.Telefono_Us;
            parametro = cmd.Parameters.Add("@NOMBRE", SqlDbType.Char);
            parametro.Value = user.Nombre_Us;
            parametro = cmd.Parameters.Add("@APELLIDO", SqlDbType.Char);
            parametro.Value = user.Apellido_Us;
            parametro = cmd.Parameters.Add("@FECHANAC", SqlDbType.Date);
            parametro.Value = user.FechaNac_Us;
            parametro = cmd.Parameters.Add("@BARRIO", SqlDbType.VarChar);
            parametro.Value = user.Barrio_Us;
            parametro = cmd.Parameters.Add("@CODPOSTAL", SqlDbType.Int);
            parametro.Value = user.Codpostal_Us;

            return ad.EjecutarProcAlmacenado(cmd, "SPAgregarUsuario");
        }
        public int ActualizarUsuario(Usuario user)
        {
            SqlCommand cmd = new SqlCommand();
            SqlParameter parametro = new SqlParameter();
            parametro = cmd.Parameters.Add("@DNI", SqlDbType.Char);
            parametro.Value = user.DNI_Us;
            parametro = cmd.Parameters.Add("@USUARIO", SqlDbType.VarChar);
            parametro.Value = user.Usuario_Us;
            parametro = cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar);
            parametro.Value = user.Email_Us;
            parametro = cmd.Parameters.Add("@PROV", SqlDbType.Char);
            parametro.Value = user.IdProv_Us;
            parametro = cmd.Parameters.Add("@LOC", SqlDbType.Char);
            parametro.Value = user.IdLoc_Us;
            parametro = cmd.Parameters.Add("@DOMICILIO", SqlDbType.VarChar);
            parametro.Value = user.Domicilio_Us;
            parametro = cmd.Parameters.Add("@DEPARTAMENTO", SqlDbType.VarChar);
            parametro.Value = user.Departamento_Us;
            parametro = cmd.Parameters.Add("@DEPTO", SqlDbType.VarChar);
            parametro.Value = user.Departamento_Us;
            parametro = cmd.Parameters.Add("@CONTRASEÑA", SqlDbType.VarChar);
            parametro.Value = user.Contraseña_Us;
            parametro = cmd.Parameters.Add("@TELEFONO", SqlDbType.Char);
            parametro.Value = user.Telefono_Us;
            parametro = cmd.Parameters.Add("@NOMBRE", SqlDbType.Char);
            parametro.Value = user.Nombre_Us;
            parametro = cmd.Parameters.Add("@APELLIDO", SqlDbType.Char);
            parametro.Value = user.Apellido_Us;
            parametro = cmd.Parameters.Add("@URL", SqlDbType.VarChar);
            parametro.Value = user.UrlImagen_Us;
            parametro = cmd.Parameters.Add("@FECHANAC", SqlDbType.Date);
            parametro.Value = user.FechaNac_Us;
            parametro = cmd.Parameters.Add("@TIPO", SqlDbType.Int);
            parametro.Value = user.Tipo_Us;
            parametro = cmd.Parameters.Add("@ESTADO", SqlDbType.Int);
            parametro.Value = user.Estado;
            parametro = cmd.Parameters.Add("@BARRIO", SqlDbType.VarChar);
            parametro.Value = user.Barrio_Us;
            parametro = cmd.Parameters.Add("@CODPOSTAL", SqlDbType.Int);
            parametro.Value = user.Codpostal_Us;
            return ad.EjecutarProcAlmacenado(cmd, "SPActualizarUsuario");
        }

        public DataTable filtrarUsuario(string filtro)
        {
            DataTable tabla = ad.ObtenerTabla("Usuarios", filtro);
            return tabla;
        }
    }
}
