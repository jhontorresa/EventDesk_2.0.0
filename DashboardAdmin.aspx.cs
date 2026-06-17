using EventDesk_2._0._0.Data;
using EventDesk_2._0._0.Models;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventDesk_2._0._0
{
    public partial class DashboardAdmin : System.Web.UI.Page
    {

        private Conexion db = new Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEventos();
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
        private void CargarEventos()
        {
            var eventos = db.Eventos.Find(_ => true).ToList();
            rptEventos.DataSource = eventos;

            rptEventos.DataBind();

        

    }
        protected void rptEventos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var id = e.CommandArgument.ToString();

           

            if (e.CommandName == "Editar")
            {
                Response.Redirect("EditarEvento.aspx?id=" + id);
            }
        }

       
    }


}
