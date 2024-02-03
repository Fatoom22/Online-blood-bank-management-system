using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminDonation_Campaigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();

        SqlCommand cmd = new SqlCommand("insert into Blood_Donation_Campaigns(CampaignDate,CampaignLoaction)  values('" + TextBox1.Text + "','" + TextBox5.Text + "') ", con);

        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        TextBox5.Text = "";


        Label1.Text = "Blood_Donation_Campaign Saved";

        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
}