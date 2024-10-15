using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class CrearReserva : Page
    {
        protected void Page_Load1(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                LblSession.Text = "Usuario: " + Session["NombreUsuario"].ToString();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // Verifico que todos los campos esten completos
            if (string.IsNullOrWhiteSpace(txtNombreUsuario.Text) ||
                string.IsNullOrWhiteSpace(txtCheckIn.Text) ||
                string.IsNullOrWhiteSpace(txtCheckOut.Text) ||
                string.IsNullOrWhiteSpace(DDLservicios.Text) ||
                string.IsNullOrWhiteSpace(txtHuespedes.Text) ||
                string.IsNullOrWhiteSpace(txtMonto.Text))
            {
                lblMensaje.Text = "Todos los campos deben ser completados.";
                return;
            }

            // Obtengo los datos del formulario

            string nombreUsuario = txtNombreUsuario.Text;
            DateTime checkIn = DateTime.Parse(txtCheckIn.Text);
            DateTime checkOut = DateTime.Parse(txtCheckOut.Text);
            string servicios = DDLservicios.Text;
            int huespedes = int.Parse(txtHuespedes.Text);
            decimal monto = decimal.Parse(txtMonto.Text);

            // Creo una instancia de la capa de negocio
            ReservaNegocio reservaNegocio = new ReservaNegocio();

            // Insertar la reserva en la base de datos
            reservaNegocio.InsertarReserva(nombreUsuario, checkIn, checkOut, servicios, huespedes, monto);

            lblMensaje.Text = "Reserva registrada con éxito.";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}