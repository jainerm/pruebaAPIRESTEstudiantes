using System;

namespace Common.API_RestEstudiantes.Models
{
    public class EntidadEstudiantes
    {
        public int Id { get; set; }
        public bool EstaBorrado { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime FechaBorrado { get; set; }
        public DateTime FechaActualizacion { get; set; }
    }
}
