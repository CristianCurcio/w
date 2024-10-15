using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class IniciarSesionNegocio
    {
        private readonly ConnectionDB _connectionDB = new ConnectionDB();

        public bool VerificarUsuario(string nombreUsuario, string contraseña)
        {
            bool usuarioValido = false;
            string query = "SELECT COUNT(*) FROM Usuarios WHERE Nombre = @Nombre AND Contrasena = @Contrasena";

            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombreUsuario);
                    command.Parameters.AddWithValue("@Contrasena", contraseña);
                    connection.Open();

                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        usuarioValido = true;
                    }
                }
            }

            return usuarioValido;
        }
    }
}