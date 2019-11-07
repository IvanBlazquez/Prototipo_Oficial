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
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();

            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                if (Page.IsValid)
                {

                    sqlConnection.Open();
                    string sqlExecute = "Zapatazo.pr_AltaUsuario";

                    SqlCommand command = new SqlCommand(sqlExecute, sqlConnection);
                    command.CommandText = sqlExecute;
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("@p_Nombre", SqlDbType.VarChar, 50);

                    command.Parameters.Add("@p_Apellido", SqlDbType.VarChar, 50);

                    command.Parameters.Add("@p_Username", SqlDbType.VarChar, 50);

                    command.Parameters.Add("@p_Password", SqlDbType.VarChar, 16);

                    command.Parameters.Add("@p_email", SqlDbType.VarChar, 50);

                    command.Parameters.Add("@p_telefono", SqlDbType.Char, 9);

                    command.Parameters.Add("@p_edad", SqlDbType.VarChar, 3);

                    command.Parameters.Add("@p_genero", SqlDbType.Char, 10);

                    command.Parameters["@p_Nombre"].Value = txtNombre.Text;
                    command.Parameters["@p_Apellido"].Value = txtApellido.Text;
                    command.Parameters["@p_Username"].Value = txtUsuario.Text;
                    command.Parameters["@p_Password"].Value = txtPass.Text;
                    command.Parameters["@p_email"].Value = txtEmail.Text;
                    command.Parameters["@p_telefono"].Value = txtTelefono.Text;
                    command.Parameters["@p_edad"].Value = txtEdad.Text;
                    command.Parameters["@p_genero"].Value = ddGenero.SelectedValue;

                    command.ExecuteNonQuery();

                    Response.Redirect("~/Login.aspx");

                }
            }
        }
    }
}