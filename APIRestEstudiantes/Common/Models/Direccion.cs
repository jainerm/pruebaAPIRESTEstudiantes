using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Common.API_RestEstudiantes.Models
{
    [Table("Direccion")]
    public class Direccion : EntidadEstudiantes
    {
        [Column("Direccion")]
        public string StringDireccion { get; set; }
        public TipoDireccion TipoDireccion { get; set; }
        public int EstudianteId { get; set; }
        public Estudiante Estudiante { get; set; }

    }
}
