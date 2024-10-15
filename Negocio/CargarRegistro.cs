using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class CargarRegistro
    {
        private readonly ConnectionDB _connectionDB = new ConnectionDB();

        // insertar un nuevo usuario
        public void InsertarUsuario(string nombreUsuario, string contraseña)
        {
            string query = "INSERT INTO Usuarios (Nombre, Contrasena) VALUES (@Nombre, @Contrasena)";

            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Agregar parametros
                    command.Parameters.AddWithValue("@Nombre", nombreUsuario);
                    command.Parameters.AddWithValue("@Contrasena", contraseña);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}