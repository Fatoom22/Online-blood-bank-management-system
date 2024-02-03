using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewDonorDonation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string n = Request.QueryString["n"].ToString();
            Label1.Text= Label1.Text + " " + n;
        }
        catch (Exception ex)
        {
        }
    }
}