using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class IniciarSesionAdminNegocio
    {
        private readonly ConnectionDB _connectionDB = new ConnectionDB();

        public bool VerificarUsuarioA(string nombreUsuario1, string contraseña1)
        {
            bool usuarioValido = false;
            string query = "SELECT COUNT(*) FROM UsuariosAdministrados WHERE Nombre1 = @Nombre1 AND Contrasena1 = @Contrasena1";

            using (SqlConnection connection = _connectionDB.ObtenerConexion())
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre1", nombreUsuario1);
                    command.Parameters.AddWithValue("@Contrasena1", contraseña1);
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