using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Models
{
    public class Usuario
    {
        public ObjectId Id { get; set; }
        public long Identificacion { get; set; }
        public string NombreCompleto { get; set; }
        public string Password { get; set; }
        public string Rol { get; set; }
        public string Ficha { get; set; }
        public string ProgramaFormacion { get; set; }
    }
}