using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYW19
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string states = string.Empty;
          //  string Roles = string.Empty;
            if (con.State == System.Data.ConnectionState.Closed)
            {
                if (rbtnactive.Checked)
                {
                    states = "Active";
                }
                else if (rbtninactive.Checked)
                {
                    states = "Inactive";
                }
                else
                {

                }
            }
    
            con.Open();
            SqlCommand sqlcmd = new SqlCommand("Adminreg", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;

            sqlcmd.Parameters.AddWithValue("@condition", "insert");
           // sqlcmd.Parameters.AddWithValue("@Admin_id", (Admin_id.Value));
            sqlcmd.Parameters.AddWithValue("@full_name", (txtfname.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@username", (txtusername.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@password", (txtpassword.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@phone", (txtphone.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@designation", (designation1.SelectedItem.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@roles", (ddroles.SelectedItem.Text.Trim()));
            sqlcmd.Parameters.AddWithValue("@state", states);
            sqlcmd.Connection = con;
            int i = sqlcmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Data added");
                Response.Redirect("/index.aspx");
            }
            else
            {
                Response.Write("Email already exist or something went wrong");
            }
            con.Close();
           
        }


        protected void OnUsernameCheck(object sender, EventArgs e)
        {
            {
                //   SqlConnection con = new SqlConnection(constring);
                string Username = txtusername.Text.Trim();

                SqlCommand cmd = new SqlCommand("SELECT username FROM mstdata WHERE username ='" + Username + "'", con);
                con.Open();
                SqlDataReader idr = cmd.ExecuteReader();
                if (idr.HasRows)
                {
                    lblMessage.Text = "Username already exists";
                    txtusername.Focus();
                }
                else
                {
                    lblMessage.Text = "";
                }
                con.Close();
            }

        }

    }
}