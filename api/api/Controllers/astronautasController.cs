using DB;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class astronautasController : ControllerBase
    {
        private Nasacontext _context;
        public astronautasController(Nasacontext context)
        {
            _context = context;
        }
        [HttpGet]
        public IEnumerable<astronautas> Get() => _context.Astronauta.ToList();


        [HttpPost]
        [Route("Guardar")]
        public dynamic Guardar(astronautas astronautas)
        {
            astronautas.id_n = astronautas.id_n;
            return new
            {
                Nombre = astronautas.nombre,
                Nacionalidad = astronautas.nacionalidad,
                Descripcion = astronautas.descripcion,
                Fecha = astronautas.fecha_nacimiento,
                Edad = astronautas.edad,
                Redes = astronautas.redes_sociales,
                Estado = astronautas.Estado

            };
        }
    }
}
