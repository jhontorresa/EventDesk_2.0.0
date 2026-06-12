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

    public string tipoInscripcion { get; set; }

    public int maximoIntegrantes { get; set; }

    public string modalidadEvento { get; set; }

    public string tipoEvento { get; set; }

    public DateTime fechaEvento { get; set; }

    public string horaEvento { get; set; }

    public DateTime fechaFinEvento { get; set; }

    public string lugarEvento { get; set; }

    public DateTime fechaInicio { get; set; }

    public string horaInicio { get; set; }

    public DateTime fechaFin { get; set; }

    public bool Activo { get; set; }

    public string horaFin { get; set; }
    }
}