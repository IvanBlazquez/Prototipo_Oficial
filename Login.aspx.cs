using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace Prototipo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
            string strConnection = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();

            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                sqlConnection.Open();

                string sqlExecute = "Zapatazo.pr_Login ";

                SqlCommand command = new SqlCommand(sqlExecute, sqlConnection);
                command.CommandText = sqlExecute;
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@p_Username", SqlDbType.VarChar, 50);
                command.Parameters.Add("@p_Password", SqlDbType.VarChar,16);

                command.Parameters["@p_Username"].Value = txtUsername.Text;
                command.Parameters["@p_Password"].Value = txtPassword.Text;

               
                SqlDataReader dr = command.ExecuteReader();
                

                if(dr.Read())
                {
                    Session["UserName"] = txtUsername.Text.ToString();
                    Session["Autentificacion"] = true;

                    Response.Redirect("~/Zapatillas.aspx");
                }
                else
                {
                    Response.Write("Usuario no registrado");
                }

                sqlConnection.Close();
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registrarse.aspx");
        }
    }
}