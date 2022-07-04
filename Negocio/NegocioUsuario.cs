using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioUsuario
    {
        DaoUsuarios dao = new DaoUsuarios();
        Usuario us = new Usuario();

        public bool UserActivo(string Mail)
        {
            return dao.ExisteXFiltro("Email_Us= '" + Mail + "' AND Estado = 1");
        }

        public bool ExisteEmail(String Mail)
        {
            return dao.ExisteXFiltro("Email_Us = '" + Mail + "'");
        }

        public bool CoincideContraseña(String Mail, String Contraseña)
        {
            return dao.ExisteXFiltro("Email_Us = '" + Mail + "' AND Contraseña_Us = '" + Contraseña + "'");
        }


        public bool ExisteNombreUsuario(string usuario)
        {
            return dao.ExisteXFiltro("Usuario_Us = '" + usuario + "'");
        }


        public Usuario getUs(string email)
        {
            us.Email_Us = email;
            return dao.getUsuarioXEmail(us);
        }

        public DataTable getTablaUs()
        {
            return dao.getTablaUsuario();
        }

        public bool eliminarUs(string DNI)
        {
<<<<<<< HEAD
           us.DNI_Us = DNI;
=======
            us.DNI_Us = DNI;
>>>>>>> b9a0828c20b0f29be7843a1407a37b65f8e034dc
            int op = dao.EliminarUsuario(us);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarUs(Usuario user)
        {
            int cantFilas = 0;
           
            if (dao.ExisteUsuario(user) == false)
            {
                cantFilas = dao.AgregarUsuario(user);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }

        public bool actualizarUs(Usuario user)
        {
           int op = dao.ActualizarUsuario(user);
            if (op == 1)
                return true;
            else
                return false;
        }

        public DataTable getFiltroUs(String filtro, String cual, String ordenar)
        {
          return dao.filtrarUsuario("SELECT * FROM Usuarios WHERE '" + cual + "' LIKE '" + filtro + "' % ORDER BY '" + ordenar + "'");

        }

        public DataTable getComprasUsuario(string dni)
        {
            DaoVentas ventas = new DaoVentas();
            return ventas.TablaVentasUsuario(dni);
        }

        public bool UsuarioRepetido(string filtro)
        {
            return dao.ExisteXFiltro(filtro);
        }

        public bool UsuarioEstado(string email)
        {
            Usuario aux = new Usuario();
            aux.Email_Us = email;
            us = dao.getUsuarioXEmail(aux);

            if (us.Estado == true) return true;
            return false;
        }
    }
}
