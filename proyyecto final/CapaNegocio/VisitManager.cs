using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static CapaDatos.VisitDataAccess;

namespace CapaNegocio
{
    public class VisitManager
    {
     
            private VisitDataAccess visitDataAccess;

            public VisitManager(VisitDataAccess visitDataAccess)
            {
                this.visitDataAccess = visitDataAccess;
            }

            // Método para registrar una visita
            public void RegisterVisit(Visit visit)
            {
                // Validar los datos de la visita
                // ...

                // Lógica adicional, si es necesario
                // ...

                // Insertar la visita en la base de datos
                visitDataAccess.InsertVisit(visit);
            }

            // Método para obtener las visitas por edificio
            public List<Visit> GetVisitsByBuilding(string building)
            {
                // Lógica adicional, si es necesario
                // ...

                // Obtener las visitas desde la capa de datos
                return visitDataAccess.GetVisitsByBuilding(building);
            }

            // Otros métodos de lógica de negocio
            // ...
        }
    }