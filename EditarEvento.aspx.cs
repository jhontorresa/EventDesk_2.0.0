using EventDesk_2._0._0.Data;
using EventDesk_2._0._0.Models;
using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventDesk_2._0._0
{
    public partial class EditarEvento : System.Web.UI.Page
    {
        private Conexion db = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                ViewState["idEvento"] = Request.QueryString["id"];

                if (ViewState["idEvento"] != null)
                {
                    CargarEvento(ViewState["idEvento"].ToString());
                }
           
             }
        }
        private void CargarEvento(string id)
        {
            var filter = Builders<Evento>.Filter.Eq("_id", new ObjectId(id));
            var evento = db.Eventos.Find(filter).FirstOrDefault();

            if (evento != null)
            {
                txtNombre.Text = evento.Nombre;
                txtTipoEvento.Text = evento.tipoEvento;
                txtTipoInscripcion.Text = evento.tipoInscripcion;
                txtMaximo.Text = evento.maximoIntegrantes.ToString();
                txtLugar.Text = evento.lugarEvento;

                txtFechaEvento.Text = evento.fechaEvento.ToString("yyyy-MM-dd");
            }
        }

      
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string id = ViewState["idEvento"].ToString();

            var filter = Builders<Evento>.Filter.Eq("_id", new ObjectId(id));

            var update = Builders<Evento>.Update
                .Set(x => x.Nombre, txtNombre.Text)
                .Set(x => x.tipoEvento, txtTipoEvento.Text)
                .Set(x => x.tipoInscripcion, txtTipoInscripcion.Text)
                .Set(x => x.maximoIntegrantes, int.Parse(txtMaximo.Text))
                .Set(x => x.lugarEvento, txtLugar.Text)
                .Set(x => x.fechaEvento, DateTime.Parse(txtFechaEvento.Text));

            db.Eventos.UpdateOne(filter, update);

            Response.Redirect("DashboardAdmin.aspx");
        }
       
    }
}