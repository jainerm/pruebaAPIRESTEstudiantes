using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Common.API_RestEstudiantes.Models
{
    [Table("Curso")]
    public class Curso : EntidadEstudiantes
    {
        public string CodigoCurso { get; set; }
        public string NombreCurso { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public IEnumerable<EstudianteCurso> EstudiantesCursos { get; set; }
    }
}
