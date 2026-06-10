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
    public class FichaService
    {
        private readonly IMongoCollection<Ficha> _fichas;

        public FichaService()
        {
            var conexion = new Conexion();
            _fichas = conexion.Fichas;
        }

        public void Crear(Ficha ficha)
        {
            _fichas.InsertOne(ficha);
        }

        public List<Ficha> ObtenerTodas()
        {
            return _fichas.Find(_ => true).ToList();
        }

        public void Eliminar(ObjectId id)
        {
            _fichas.DeleteOne(x => x.Id == id);
        }
    }
}