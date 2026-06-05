using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventDesk_2._0._0.Models
{
    public class ProgramaFormacion
    {
        public ObjectId Id { get; set; }

        public string Nombre { get; set; }
    }
}