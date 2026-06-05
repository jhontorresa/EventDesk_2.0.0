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
    public class UsuarioService
    {
        private readonly IMongoCollection<Usuario> _usuarios;

        public UsuarioService() 
        {
            var conexion = new Conexion();

            _usuarios = conexion.Usuarios;
        }

        public List<Usuario> ObtenerTodos()
        {
            return _usuarios.Find(_ => true).ToList();
        }

        public Usuario Login(long identificacion, string password)
        {
            return _usuarios
                .Find(x =>
                    x.Identificacion == identificacion &&
                    x.Password == password)
                .FirstOrDefault();
        }                
    }
}