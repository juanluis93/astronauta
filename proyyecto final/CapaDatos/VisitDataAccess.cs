using Capa_entidad;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos { 
public class VisitDataAccess
{
    private string connectionString;

    public VisitDataAccess(string connectionString)
    {
        this.connectionString = connectionString;
    }

    // Insertar una visita en la base de datos
    public void InsertVisit(Visit visit)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Código para insertar los datos en la base de datos
            // ...
        }
    }

    // Obtener las visitas de un edificio específico
    public List<Visit> GetVisitsByBuilding(string building)
    {
        List<Visit> visits = new List<Visit>();

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Código para consultar las visitas en la base de datos
            // ...
        }

        return visits;
    }

    // Otros métodos de acceso a datos
    // ...
}
}
