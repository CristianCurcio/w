using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class IniciarSesionAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click2(object sender, EventArgs e)
        {
            // Obtengo los datos del formulario
            string nombreUsuario1 = txtNombreUsuario1.Text;
            string contraseña1 = txtContraseña1.Text;

            // Valido campos en blanco
            if (string.IsNullOrWhiteSpace(nombreUsuario1) || string.IsNullOrWhiteSpace(contraseña1))
            {
                lblMensaje1.Text = "Por favor, ingrese ambos campos.";
                return;
            }

            // Creo variable de tipo session 
            Session["NombreUsuario"] = nombreUsuario1;

            // Creo una instancia de la capa de negocio
            IniciarSesionAdminNegocio iniciarSesionAdministrador = new IniciarSesionAdminNegocio();
            bool usuarioValido = iniciarSesionAdministrador.VerificarUsuarioA(nombreUsuario1, contraseña1);

            // Verifico usuario y muestro mensajes correspondientes
            if (usuarioValido)
            {
                lblMensaje1.Text = "Inicio de sesión exitoso.";
                Response.Redirect("MenuAdmin.aspx");
            }
            else
            {
                lblMensaje1.Text = "Nombre de usuario o contraseña incorrectos.";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}