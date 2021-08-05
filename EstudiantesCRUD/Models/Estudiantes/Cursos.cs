using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EstudiantesCRUD.Models.Estudiantes
{
    public class Cursos
    {
        public string CodigoCurso { get; set; }
        public string NombreCurso { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public int Id_EstudiantesCursos { get; set; }
    }
}
