using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Models
{
    public class Inscripcion
    {
        public ObjectId Id { get; set; }

        public long UsuarioId { get; set; }

        public ObjectId EventoId { get; set; }

        public DateTime FechaInscripcion { get; set; }
    }
}