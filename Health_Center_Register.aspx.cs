using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Health_Center_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Health_Center where HealthCenterName='" + TextBox1.Text + "' or  Loginname ='" + TextBox2.Text + "' or  Name ='" + TextBox4.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            cmd = new SqlCommand("insert into Health_Center(HealthCenterName,Name,Loginname,Password,IsApprove)  values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','New') ", con);

            cmd.ExecuteNonQuery();
            Button1.Enabled = false;


            Response.Write("<script>alert('Account Saved You Can Login After the Admin Approval')</script>");
            Response.Redirect("CenterLogin.aspx");
        }
        else
        {
            Label1.Text = "Error  Name Or Center Name Or Loginname Found On System!!?";
        }
         
       
    }
    
}