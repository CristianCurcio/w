using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                LblSession.Text = "Usuario: " + Session["NombreUsuario"].ToString();
            }
        }

        protected void Registrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }

        protected void IniciarSesión_Click(object sender, EventArgs e)
        {
            Response.Redirect("IniciarSesion.aspx");
        }

        protected void Administrador_Click(object sender, EventArgs e)
        {
            Response.Redirect("IniciarSesionAdministrador.aspx");
        }

    }
}