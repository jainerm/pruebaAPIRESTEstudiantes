using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EstudiantesCRUD.Models.Estudiantes
{
    public class Estudiantes
    {
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public DateTime FechaNacimento { get; set; }
        public string Genero { get; set; }
        public string TipoDireccion { get; set; }
        public string Direccione { get; set; }
    }
}
