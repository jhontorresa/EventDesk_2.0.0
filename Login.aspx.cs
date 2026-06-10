using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EventDesk_2._0._0.Models;
using EventDesk_2._0._0.Services;

namespace EventDesk_2._0._0
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var service = new UsuarioService();

            long identificacion =
                Convert.ToInt64(txtIdentificacion.Text);

            string password =
                txtPassword.Text;

            Usuario usuario =
                service.Login(
                    identificacion,
                    password);

            if (usuario != null)
            {
                Session["UsuarioId"] =
                    usuario.Identificacion;

                Session["Rol"] =
                    usuario.Rol;

                Response.Redirect(
                    "DashboardAdmin.aspx");
            }
            else
            {
                lblMensaje.Text =
                    "Credenciales incorrectas";
            }
        }
    }
}
