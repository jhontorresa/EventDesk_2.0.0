using EventDesk_2._0._0.Models;
using EventDesk_2._0._0.Services;
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
    public partial class DashboardAprendiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEventos();
            }
        }
        private void CargarEventos()
        {
            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("EventDeskDB");
            var collection = database.GetCollection<Evento>("Evento");

                var eventos = collection.Find(_ => true).ToList();

            rptEventos.DataSource = eventos;
            rptEventos.DataBind();
        }

        protected void btnInscribirse_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;
                ObjectId eventoId = new ObjectId(btn.CommandArgument);

                long usuarioId = Convert.ToInt64(Session["UsuarioId"]);

                var service = new InscripcionService();
            
                Inscripcion inscripcion = new Inscripcion
                {
                    UsuarioId = usuarioId,
                    EventoId = eventoId,
                    NombreCompleto = Session["NombreCompleto"].ToString(),
                    Ficha = Session["Ficha"].ToString(),
                    ProgramaFormacion = Session["ProgramaFormacion"].ToString(),
                    FechaInscripcion = DateTime.Now
                };

                service.Registrar(inscripcion);

                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Inscripción realizada correctamente.";
            }
            catch (Exception ex)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Error: " + ex.Message;
            }
        }
        protected void rptEventos_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var evento = (Evento)e.Item.DataItem;

                Button btn = (Button)e.Item.FindControl("btnInscribirse");

           
                DateTime cierreInscripcion =
                    Convert.ToDateTime(evento.fechaFin + " " + evento.horaFin);

                if (DateTime.Now > cierreInscripcion)
                {
                    btn.Text = "Inscripción cerrada";
                    btn.Enabled = false;
                    btn.CssClass = "btn btn-secondary w-100"; 
                }
                else
                {
                    btn.Text = "Inscribirse";
                    btn.Enabled = true;
                    btn.CssClass = "btn btn-success w-100"; 
                }
            }
        }
    }
}
