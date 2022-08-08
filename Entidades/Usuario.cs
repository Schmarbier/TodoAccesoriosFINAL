using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private string dNI_Us;
        private string usuario_Us;
        private string email_Us;
        private string idProv_Us;
        private string idLoc_Us;
        private string domicilio_Us;
        private string departamento_Us;
        private string barrio_Us;
        private string contraseña_Us;
        private string telefono_Us;
        private string nombre_Us;
        private string apellido_Us;
        private string urlImagen_Us;
        private DateTime fechaNac_Us;
        private int tipo_Us;
        private bool estado;
        private int codpostal_Us;

        public string DNI_Us { get => dNI_Us; set => dNI_Us = value; }
        public string Usuario_Us { get => usuario_Us; set => usuario_Us = value; }
        public string Email_Us { get => email_Us; set => email_Us = value; }
        public string IdProv_Us { get => idProv_Us; set => idProv_Us = value; }
        public string IdLoc_Us { get => idLoc_Us; set => idLoc_Us = value; }
        public string Domicilio_Us { get => domicilio_Us; set => domicilio_Us = value; }
        public string Departamento_Us { get => departamento_Us; set => departamento_Us = value; }
        public string Barrio_Us { get => barrio_Us; set => barrio_Us = value; }
        public string Contraseña_Us { get => contraseña_Us; set => contraseña_Us = value; }
        public string Telefono_Us { get => telefono_Us; set => telefono_Us = value; }
        public string Nombre_Us { get => nombre_Us; set => nombre_Us = value; }
        public string Apellido_Us { get => apellido_Us; set => apellido_Us = value; }
        public string UrlImagen_Us { get => urlImagen_Us; set => urlImagen_Us = value; }
        public DateTime FechaNac_Us { get => fechaNac_Us; set => fechaNac_Us = value; }
        public int Tipo_Us { get => tipo_Us; set => tipo_Us = value; }
        public bool Estado { get => estado; set => estado = value; }
        public int Codpostal_Us { get => codpostal_Us; set => codpostal_Us = value; }
    }
}
