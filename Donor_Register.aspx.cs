using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Donor_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCalendar();
    }
    private void BindCalendar()
    {
        Calendar1.SelectedDate = DateTime.Today;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Donor where  ContactNumber ='" + TextBox5.Text + "' or LoginName='" + TextBox7.Text + "' or Email='"+TextBox9.Text+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            cmd = new SqlCommand("insert into Donor(DonorName,LoginName,Password,Email,ContactNumber,BloodGroup,Age,DonorAddress,Last_Donation_Date)  values('" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue.ToString() + "'," + TextBox6.Text + ",'" + TextBox10.Text + "','" + Calendar1.SelectedDate.Date.ToShortDateString().ToString() + "') ", con);

            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

            //Label1.Text = "Donor Saved";
            Response.Redirect("DonorLogin.aspx");

        }
        else
        {
            Label1.Text = "Error Donor LoginName Or ContactNumber Or Email Found On System!!?";
        }
    }
}