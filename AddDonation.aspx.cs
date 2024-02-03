using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddDonation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        string date = DateTime.UtcNow.AddMonths(-3).ToString("mm/dd/yyyy");
        SqlCommand cmd = new SqlCommand("Select * from Donor where ContactNumber ='" + TextBox1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string DonorID = dt.Rows[0][0].ToString();
            string DonorName = dt.Rows[0][1].ToString();
            string BloodGroup = dt.Rows[0][6].ToString();
            string Last_Donation_Date = dt.Rows[0][9].ToString();

            Label1.Text = DonorName;
            Label2.Text = BloodGroup;
            Label5.Text = DonorID;
            Label6.Text = Last_Donation_Date;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label5.Visible = false;
            Button2.Visible = true;


        }
        else
        {
            Label1.Text = "";
            Label2.Text = "";
            Label5.Text = "";
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Button2.Visible = false;
            Response.Write("<script>alert(' Donor Phone Number Not Found ')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into BloodDonation (BloodGroup,DonorID) values('" + Label2.Text + "'," + Label5.Text + ")", con);
        cmd.ExecuteNonQuery();
        string localDate = DateTime.Now.ToShortDateString();
        cmd = new SqlCommand("Update Donor set Last_Donation_Date='"+localDate+"' where DonorID=" + Label5.Text + "", con);
        cmd.ExecuteNonQuery();
        Label1.Text = "";
        Label2.Text = "";
        Label5.Text = "";
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Button2.Visible = false;
        Response.Write("<script>alert(' Donation Saved ')</script>");
    }
}