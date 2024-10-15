using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Datos
{
    public class ConnectionDB
    {
        private const string connectionString = @"Data Source=DESKTOP-RTJ7NSK\SQLEXPRESS;Initial Catalog=HOTEL_LAS_HAYAS;Integrated Security=True";

        public SqlConnection ObtenerConexion()
        {
            return new SqlConnection(connectionString);
        }
    }
}