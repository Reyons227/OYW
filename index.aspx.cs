using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYW19
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        
        {
          
            if (Session["id"] == null)
            {
                Response.Redirect("/login.aspx");
            }
        
           if (User.IsInRole("Guest"))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Page Not Found')</script>");
            }
         
        }
    }
}