namespace Netcore.Model
{
    public class Astronauta
    {
        public int id_n { get; set; }
        public string? nombre { get; set; }
        public int? edad { get; set; }

        public string? nacionalidad { get; set; }

         public string? descripcion {  get; set; }

        public DateTime? fecha_nacimiento { get; set; }
        public string? redes_sociales { get; set; } 
        public string? foto_url { get; set; }
        public string? estado {  get; set; }

        public string? misiones {  get; set; }
    }
}
