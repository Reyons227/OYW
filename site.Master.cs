using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYW19
{
    public partial class site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("/login.aspx");
            }
            else if (Convert.ToString(Session["roles"]) == "SuperAdmin")
            { 
            
            }
            else if (Convert.ToString(Session["roles"]) == "Admin")
            {
                adminreg.Visible = false;
                voldata.Visible = false;
                allvol.Visible = false;
                regvol.Visible = false;
                secvol.Visible = false;
                customers.Visible = false;
                regonday.Visible = false;
                custsrc.Visible = false;
                custdetails.Visible = false;
            }
            else if (Convert.ToString(Session["roles"]) == "SevVolunteer")
            {

            }
            else if (Convert.ToString(Session["roles"]) == "RegVolunteer")
            {

            }
        }
    }
}