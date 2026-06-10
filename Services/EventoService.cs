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
    public class EventoService
    {
        private readonly IMongoCollection<Evento> _eventos;

        public EventoService()
        {
            var conexion = new Conexion();
            _eventos = conexion.Eventos;
        }

        public void CrearEvento(Evento evento)
        {
            ValidarEvento(evento);

            evento.Activo = true;

            _eventos.InsertOne(evento);
        }

        private void ValidarEvento(Evento evento)
        {
            if (evento.FechaEvento <= DateTime.Now)
                throw new Exception("La fecha del evento debe ser futura.");

            if (evento.FechaInicioInscripcion >= evento.FechaEvento)
                throw new Exception("La fecha de inicio de inscripción debe ser menor que la fecha del evento.");

            if (evento.FechaCierreInscripcion >= evento.FechaEvento)
                throw new Exception("La fecha de cierre de inscripción debe ser menor que la fecha del evento.");

            if (evento.HoraInicio >= evento.HoraFin)
                throw new Exception("La hora de inicio debe ser menor que la hora final.");

            if (evento.Categoria == "Individual" &&
                evento.MaximoIntegrantes != 1)
                throw new Exception("Los eventos individuales deben tener máximo 1 integrante.");

            if (evento.Categoria == "Grupal" &&
                evento.MaximoIntegrantes <= 1)
                throw new Exception("Los eventos grupales deben tener más de 1 integrante.");
        }

        public List<Evento> ObtenerTodos()
        {
            return _eventos.Find(_ => true).ToList();
        }

        public Evento ObtenerPorId(ObjectId id)
        {
            return _eventos
                .Find(x => x.Id == id)
                .FirstOrDefault();
        }

        public void ActualizarEventosVencidos()
        {
            var eventosVencidos = _eventos.Find(
                x => x.FechaEvento < DateTime.Now &&
                x.Activo == true
            ).ToList();

            foreach (var evento in eventosVencidos)
            {
                evento.Activo = false;

                _eventos.ReplaceOne(
                    x => x.Id == evento.Id,
                    evento);
            }
        }

        public void DesactivarEventosVencidos()
        {
            var eventos = _eventos.Find(x =>
                x.Activo &&
                x.FechaEvento < DateTime.Now
            ).ToList();

            foreach (var evento in eventos)
            {
                evento.Activo = false;

                _eventos.ReplaceOne(
                    x => x.Id == evento.Id,
                    evento);
            }
        }

        public List<Evento> ObtenerActivos()
        {
            return _eventos
                .Find(x => x.Activo)
                .ToList();
        }

        public List<Evento> BuscarPorNombre(string nombre)
        {
            return _eventos
                .Find(x => x.Nombre.Contains(nombre))
                .ToList();
        }

        public void Actualizar(Evento evento)
        {
            ValidarEvento(evento);

            _eventos.ReplaceOne(
                x => x.Id == evento.Id,
                evento
            );
        }

        public void Eliminar(ObjectId id)
        {
            _eventos.DeleteOne(x => x.Id == id);
        }
    }
}