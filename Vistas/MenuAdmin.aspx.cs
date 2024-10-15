using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Reserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["NombreUsuario"] != null)
            {
                LblSession.Text = "Usuario: " + Session["NombreUsuario"].ToString();
            }
        }
        protected void BtnEliminarUsuario_Click(object sender, EventArgs e)
        {
            int usuarioId;
            if (int.TryParse(TxtUsuarioID.Text, out usuarioId))
            {
                MenuAdmin admin = new MenuAdmin();
                bool usuarioEliminado = admin.EliminarUsuario(usuarioId);

                if (usuarioEliminado)
                {
                    LblResultado1.Text = "Usuario eliminado exitosamente.";
                }
                else
                {
                    LblResultado1.Text = "No se pudo eliminar el usuario.";
                }
            }
            else
            {
                LblResultado1.Text = "ID de usuario no valido.";
            }
        }
        protected void BtnEliminarReserva_Click(object sender, EventArgs e)
        {
            int reservaId;
            if (int.TryParse(TxtReservaID.Text, out reservaId))
            {
                MenuAdmin admin = new MenuAdmin();
                bool reservaEliminada = admin.EliminarReserva(reservaId);

                if (reservaEliminada)
                {
                    LblResultado.Text = "Reserva eliminada exitosamente.";
                }
                else
                {
                    LblResultado.Text = "No se pudo eliminar la reserva.";
                }
            }
            else
            {
                LblResultado.Text = "ID de reserva no valido.";
            }
        }

        protected void TxtUsuarioID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}