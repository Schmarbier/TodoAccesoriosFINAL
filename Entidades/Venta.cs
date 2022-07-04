using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ventas
    {
        //PROPIEDADES
        private int NroVenta;
        private String Usuario;
        private String DniUsuario;
        private String EmailUsuario;
        private String IdTipoEnvio;
        private String IdLoc;
        private String IdProvLoc;
        private String IdTipoPago;
        private String DireccionUsuario;
        private DateTime Fecha;
        private String TelefonoUsuario;
        private decimal Total;
        private String Nombre;
        private String Apellido;
        private String Departamento;
        private String Barrio;
        private int CodPostal;

        //GETS
        public int getNroVenta() { return NroVenta; }
        public String getUsuario() { return Usuario; }
        public String getDniUsuario() { return DniUsuario; }
        public String getEmailUsuario() { return EmailUsuario; }
        public String getIdTipoEnvio() { return IdTipoEnvio; }
        public String getIdLoc() { return IdLoc; }
        public String getIdProvLoc() { return IdProvLoc; }
        public String getIdTipoPago() { return IdTipoPago; }
        public String getDireccion() { return DireccionUsuario; }
        public DateTime getFecha() { return Fecha; }
        public String getTelefono() { return TelefonoUsuario; }
        public decimal getTotal() { return Total; }
        public String getNombre() { return Nombre; }
        public String getApellido() { return Apellido; }
        public String getDepartamento() { return Departamento; }
        public String getBarrio() { return Barrio; }
        public int getCodPostal() { return CodPostal; }


        //SETS
        public void setNroVenta(int n) { NroVenta = n; }
        public void setUsuario(String u) { Usuario = u; }
        public void setDniUsuario(String d) { DniUsuario = d; }
        public void setEmailUsuario(String e) { EmailUsuario = e; }
        public void setIdTipoEnvio(String i) { IdTipoEnvio = i; }
        public void setIdLoc(String i) { IdLoc = i; }
        public void setIdProvLoc(String i) { IdProvLoc = i; }
        public void setIdTipoPago(String i) { IdTipoPago = i; }
        public void setDireccion(String d) { DireccionUsuario = d; }
        public void setFecha(DateTime f) { Fecha = f; }
        public void setTelefono(String t) { TelefonoUsuario = t; }
        public void setTotal(decimal t) { Total = t; }
        public void setNombre(String n) { Nombre = n; }
        public void setApellido(String a) { Apellido = a; }
        public void setDepartamento(String d) { Departamento = d; }
        public void setBarrio(String b) { Barrio = b; }
        public void setCodPostal(int c) { CodPostal = c; }
    }
}
