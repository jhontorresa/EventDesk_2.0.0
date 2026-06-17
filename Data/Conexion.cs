using EventDesk_2._0._0.Models;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Data
{
    public class Conexion
    {
        private readonly IMongoDatabase _database;

        public Conexion()
        {
            var client = new MongoClient("mongodb://localhost:27017");

            _database = client.GetDatabase("EventDeskDB");
        }

        public IMongoCollection<Usuario> Usuarios =>
            _database.GetCollection<Usuario>("Usuarios");

        public IMongoCollection<Evento> Eventos =>
            _database.GetCollection<Evento>("Evento");

        public IMongoCollection<Inscripcion> Inscripciones =>
            _database.GetCollection<Inscripcion>("Inscripciones");

        public IMongoCollection<ProgramaFormacion> Programas =>
            _database.GetCollection<ProgramaFormacion>("ProgramasFormacion");

        public IMongoCollection<Ficha> Fichas =>
            _database.GetCollection<Ficha>("Fichas");
    }
}