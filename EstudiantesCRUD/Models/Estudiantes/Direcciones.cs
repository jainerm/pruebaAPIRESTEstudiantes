using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EstudiantesCRUD.Models.Estudiantes
{
    public class Direcciones
    {
        public string Direccion { get; set; }
        public int TipoDireccion { get; set; }
        public int EstudianteId { get; set; }
        public string Estudiante { get; set; }
    }
}
