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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                con.Open();
                //  SqlCommand cmd = new SqlCommand("select * from Employeelogin where Emp_Email =@Emp_Email and Emp_Password=@Emp_Password", con);
                SqlCommand cmd = new SqlCommand("userlogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", txtuname.Value);
                cmd.Parameters.AddWithValue("@upass", txtpass.Value);

                DataTable dt = new DataTable();
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
                int rowcount = dt.Rows.Count;
                string A = "Admin";
                string B = "Guest";
                string C = "SuperAdmin";
                string isActive = "Active";
                string isInactive = "Inactive";
                if (rowcount > 0)
                {
                    Session["username"] = dt.Rows[0]["username"];
                    Session["fullname"] = dt.Rows[0]["full_name"];
                    Session["roles"] = dt.Rows[0]["roles"];
                    Session["state"] = dt.Rows[0]["state"];
                    Session["id"] = dt.Rows[0]["Admin_id"].ToString();

                    if (A == dt.Rows[0]["roles"].ToString() && isActive == dt.Rows[0]["state"].ToString())
                    {
                        Response.Redirect("/index.aspx");
                    }
                    else if (A == dt.Rows[0]["roles"].ToString() && isInactive == dt.Rows[0]["state"].ToString())
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Account has been Deactivated')</script>");
                    }
                    else if (B == dt.Rows[0]["roles"].ToString() && isActive == dt.Rows[0]["state"].ToString())
                    {
                        Response.Redirect("/Guest.aspx");
                        
                    }
                    else if (B == dt.Rows[0]["roles"].ToString() && isInactive == dt.Rows[0]["state"].ToString())
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Account has been Deactivated')</script>");

                    }
                    else if (C == dt.Rows[0]["roles"].ToString() && isActive == dt.Rows[0]["state"].ToString())
                    {
                        Response.Redirect("/index.aspx");
                        
                    }
                    else if (C == dt.Rows[0]["roles"].ToString() && isInactive == dt.Rows[0]["state"].ToString())
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Account has been Deactivated')</script>");

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Account has been deactivated , Contact your Head')</script>");
                    }

                  
                   

                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }


            }
        }

    }
}