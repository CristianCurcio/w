using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class ReservaNegocio
    {
        private readonly ConnectionDB _connectionDB = new ConnectionDB();

        // insertar una nueva reserva
        public void InsertarReserva(string nombreUsuario, DateTime checkIn, DateTime checkOut, string servicios, int huespedes, decimal monto)
        {

            if (checkIn < new DateTime(1753, 1, 1) || checkOut > new DateTime(9999, 12, 31))
            {
                throw new ArgumentException("Las fechas deben estar dentro del rango permitido por SQL Server.");
            }

            string query = "INSERT INTO Reservas (NombreUsuario, CheckIn, CheckOut, Servicios, Huespedes, Monto) " +
                           "VALUES (@NombreUsuario, @CheckIn, @CheckOut, @Servicios, @Huespedes, @Monto)";

            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Agregar parametros                   
                    command.Parameters.AddWithValue("@NombreUsuario", nombreUsuario);
                    command.Parameters.AddWithValue("@CheckIn", checkIn);
                    command.Parameters.AddWithValue("@CheckOut", checkOut);
                    command.Parameters.AddWithValue("@Servicios", servicios);
                    command.Parameters.AddWithValue("@Huespedes", huespedes);
                    command.Parameters.AddWithValue("@Monto", monto);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}