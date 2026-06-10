using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Models
{
    public class Ficha
    {
        public ObjectId Id { get; set; }

        public string NumeroFicha { get; set; }

        public string ProgramaId { get; set; }
    }
}