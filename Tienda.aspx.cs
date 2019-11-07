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
    public partial class Tienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
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
            Response.Redirect("~/Login.aspx");
        }

        protected void btnAcercaDe_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcercaDeNosotros.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["DAM_Compartido_DEVConnectionString"].ToString();

            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {

                sqlConnection.Open();
                string sqlExecute = "Zapatazo.pr_BuscarZapatos";

                SqlCommand command = new SqlCommand(sqlExecute, sqlConnection);
                command.CommandText = sqlExecute;
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@p_CodCategoria", SqlDbType.Char, 3);
                command.Parameters.Add("@p_CodMarcas", SqlDbType.Int);

                /*Comprobar que la categoria es Nulo*/
                if (ddlTipoDeCalzado.SelectedValue == "")
                {
                    command.Parameters["@p_CodCategoria"].Value = DBNull.Value;
                }
               else
                {
                    command.Parameters["@p_CodCategoria"].Value =ddlTipoDeCalzado.SelectedValue;
                }

                /*Comprobar que la marca es Nulo*/
                if (ddlMarcas.SelectedValue == "")
                {
                    command.Parameters["@p_CodMarcas"].Value = DBNull.Value;
                }
                else
                {
                    command.Parameters["@p_CodMarcas"].Value = ddlMarcas.SelectedValue;
                }
               

                SqlDataReader dr = command.ExecuteReader();
                grvZapatos.DataSource = dr;
                grvZapatos.DataBind();

            }
        }
    }
}