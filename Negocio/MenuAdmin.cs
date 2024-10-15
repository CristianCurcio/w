using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class MenuAdmin
    {
        private readonly ConnectionDB _connectionDB = new ConnectionDB();

        // eliminar una reserva por ID
        public bool EliminarReserva(int reservaId)
        {
            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                string query = "DELETE FROM Reservas WHERE ReservaID = @ReservaID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ReservaID", reservaId);
                    connection.Open();
                    int result = command.ExecuteNonQuery();
                    return result > 0; 
                }
            }
        }

        // eliminar un usuario por ID
        public bool EliminarUsuario(int usuarioId)
        {
            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                string query = "DELETE FROM Usuarios WHERE UsuarioID = @NombreUsuario";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@NombreUsuario", usuarioId);
                    connection.Open();
                    int result = command.ExecuteNonQuery();
                    return result > 0; 
                }
            }
        }
    }
}