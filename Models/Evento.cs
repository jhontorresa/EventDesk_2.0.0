using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Models
{
    public class Evento
    {
        public ObjectId Id { get; set; }

        public string Nombre { get; set; }

        public string Categoria { get; set; }

        public int MaximoIntegrantes { get; set; }

        public DateTime FechaEvento { get; set; }

        public DateTime FechaInicioInscripcion { get; set; }

        public DateTime FechaCierreInscripcion { get; set; }

        public TimeSpan HoraInicio { get; set; }

        public TimeSpan HoraFin { get; set; }

        public bool Activo { get; set; }
    }
}