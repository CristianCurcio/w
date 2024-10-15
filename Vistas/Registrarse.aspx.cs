using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }     
        protected void Button1_Click(object sender, EventArgs e)
        {
                // Obtener los datos del formulario
                string nombreUsuario = txtNombreUsuario.Text;
                string contraseña = txtContraseña.Text;
                string contraseña1 = txtContraseña1.Text;

                // Validar los campos en blanco
                if (string.IsNullOrWhiteSpace(nombreUsuario) || string.IsNullOrWhiteSpace(contraseña) || string.IsNullOrWhiteSpace(contraseña1))
                {
                    lblMensaje.Text = "Todos los campos son requeridos.";
                    return;
                }
                // Validar que las contraseñas coincidan 
                if (contraseña != contraseña1)
                {
                lblMensaje.Text = "Las contraseñas no coinciden.";
                return;
                }

                // Crear una instancia de la capa de negocio
                CargarRegistro cargarRegistro = new CargarRegistro();

                // Insertar el usuario en la base de datos
                cargarRegistro.InsertarUsuario(nombreUsuario, contraseña);

                // Mostrar un mensaje de realizacion
                lblMensaje.Text = "Usuario registrado con éxito.";
               
                Response.Redirect("MainMenu.aspx");               
            }

            private void LimpiarFormulario()
            {
                txtNombreUsuario.Text = "";
                txtContraseña.Text = "";
                txtContraseña1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}
