using Microsoft.AspNetCore.Mvc;
using Netcore.Model;

namespace Netcore.Controllers
{
    [ApiController]
    [Route("cliente")]
    public class ClienteContolle :ControllerBase
    {
        [HttpGet]
        [Route("listar")]
        public dynamic listarAustronauta() {

            List<Astronauta> astronautas = new List<Astronauta>
            {
            new Astronauta
            {
                id_n = 1 ,
                nombre ="juan",
                edad = 21,
                nacionalidad = "Dominicano",
                descripcion ="el mejor",
                fecha_nacimiento = new DateTime(2002, 11, 10),
                redes_sociales = "Facebook , instagram",
                estado = "vivo",
                misiones = "Warzone"
            }
        };
        
            return astronautas;
        }

        [HttpPost]
        [Route("Guardar")]
        public dynamic guardarAustronauta(Astronauta astronauta)
        {
            astronauta.id_n = 3;
            return new
            {
                success = true,
                massage = "cliente registrado",
                result = astronauta
            };
        }
    }
}
