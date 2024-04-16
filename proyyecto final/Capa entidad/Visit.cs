using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_entidad
{
    // Clase entidad para representar una visita
    public class Visit
    {
        public int VisitId { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Career { get; set; }
        public string Email { get; set; }
        public string Building { get; set; }
        public DateTime EntryTime { get; set; }
        public DateTime ExitTime { get; set; }
        public string VisitPurpose { get; set; }
        public byte[] VisitorPhoto { get; set; }
        public string Classroom { get; set; }
    }

    // Otras clases de entidad, si las hay
    // ...
}
