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
    }
}
