using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            // Obtengo los datos del formulario
            string nombreUsuario = txtNombreUsuario.Text;
            string contraseña = txtContraseña.Text;

            // Valido campos en blanco
            if (string.IsNullOrWhiteSpace(nombreUsuario) || string.IsNullOrWhiteSpace(contraseña))
            {
                lblMensaje.Text = "Por favor, ingrese ambos campos.";
                return;
            }

            // Creo variable de tipo session 
            Session["NombreUsuario"] = txtNombreUsuario.Text;

            // Creo una instancia de la capa de negocio
            IniciarSesionNegocio iniciarSesion = new IniciarSesionNegocio();
            bool usuarioValido = iniciarSesion.VerificarUsuario(nombreUsuario, contraseña);

            // Verifico usuario y muestro mensajes correspondientes
            if (usuarioValido)
            {
                lblMensaje.Text = "Inicio de sesión exitoso.";
                Response.Redirect("CrearReserva.aspx");
            }
            else
            {
                lblMensaje.Text = "Nombre de usuario o contraseña incorrectos.";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}