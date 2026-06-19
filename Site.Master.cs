using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventDesk_2._0._0
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreCompleto"] != null)
            {
                lblUsuario.Text = "Hola, " + Session["NombreCompleto"].ToString();
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Session.Abandon();

            Response.Redirect("Login.aspx");
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            UpdateLoginDisplay();
        }

        private void UpdateLoginDisplay()
        {
            var nombre = Session["NombreCompleto"] as string;
            if (!string.IsNullOrEmpty(nombre))
            {
                lblUsuario.Text = "Hola, " + nombre;
                lblUsuario.Visible = true;
                btnSalir.Visible = true;
            }
            else
            {
                lblUsuario.Text = string.Empty;
                lblUsuario.Visible = false;
                btnSalir.Visible = false;
            }
        }
    }

    
    }