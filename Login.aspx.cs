using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventDesk_2._0._0
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string password = txtPassword.Text;

            if (usuario == "admin" && password == "123")
            {
                Response.Redirect("DashboardAdmin.aspx");
            }
            else if (usuario == "aprendiz" && password == "123")
            {
                Response.Redirect("DashboardAprendiz.aspx");
            }
            else
            {
                lblMensaje.Text = "Usuario o contraseña incorrectos";
            }
        }
    }
    }
