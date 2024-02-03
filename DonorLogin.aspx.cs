using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DonorLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Donor where LoginName='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            
                string DonorID = dt.Rows[0][0].ToString();
                string DonorName = dt.Rows[0][1].ToString();
                Session["DonorID"] = DonorID;
                Session["DonorName"] = DonorName;

                Response.Redirect("DonorPage.aspx");
            
        }
        else
        {
            Label1.Text = "Please Enter valid Loginname and LoginPassword";
        }
    }
}