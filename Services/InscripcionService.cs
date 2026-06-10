using EventDesk_2._0._0.Data;
using EventDesk_2._0._0.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Services
{
    public class InscripcionService
    {
        private readonly IMongoCollection<Inscripcion> _inscripciones;
        private readonly IMongoCollection<Evento> _eventos;

        public InscripcionService()
        {
            var conexion = new Conexion();

            _inscripciones = conexion.Inscripciones;
            _eventos = conexion.Eventos;
        }

        public void Registrar(Inscripcion inscripcion)
        {
            var evento = _eventos
                .Find(x => x.Id == inscripcion.EventoId)
                .FirstOrDefault();

            if (evento == null)
                throw new Exception("El evento no existe.");

            if (!evento.Activo)
                throw new Exception("El evento no está activo.");

            if (evento.FechaEvento < DateTime.Now)
                throw new Exception("El evento ya venció.");

            if (evento.FechaCierreInscripcion < DateTime.Now)
                throw new Exception("Las inscripciones están cerradas.");

            var existe = _inscripciones.Find(x =>
                x.UsuarioId == inscripcion.UsuarioId &&
                x.EventoId == inscripcion.EventoId)
                .Any();

            if (existe)
                throw new Exception("Ya está inscrito en este evento.");

            inscripcion.FechaInscripcion = DateTime.Now;

            _inscripciones.InsertOne(inscripcion);
        }

        public List<Inscripcion> ObtenerTodas()
        {
            return _inscripciones
                .Find(_ => true)
                .ToList();
        }

        public void Cancelar(ObjectId id)
        {
            _inscripciones.DeleteOne(x => x.Id == id);
        }
    }
}