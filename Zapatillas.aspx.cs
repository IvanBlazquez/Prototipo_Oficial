using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototipo
{
    public partial class Zapatillas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["UserName"]!=null)
            {
                lblUsuarioContenido.Text = Session["UserName"].ToString();
            }
           else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

 
    }
}