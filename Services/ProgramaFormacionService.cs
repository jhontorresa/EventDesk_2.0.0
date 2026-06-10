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
    public class ProgramaFormacionService
    {
        private readonly IMongoCollection<ProgramaFormacion> _programas;

        public ProgramaFormacionService()
        {
            var conexion = new Conexion();
            _programas = conexion.Programas;
        }

        public void Crear(ProgramaFormacion programa)
        {
            _programas.InsertOne(programa);
        }

        public List<ProgramaFormacion> ObtenerTodos()
        {
            return _programas.Find(_ => true).ToList();
        }

        public void Eliminar(ObjectId id)
        {
            _programas.DeleteOne(x => x.Id == id);
        }
    }
}