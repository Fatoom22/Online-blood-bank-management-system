using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageDonor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string cname = Session["DonorName"].ToString();
            Label1.Text = "Welcome Donor : " + cname + " ";
        }
        catch (Exception ex)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
