using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AddStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Blood_Bank_Users where  UserLoginName ='" + TextBox5.Text + "' or UserName='" + TextBox1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            cmd = new SqlCommand("insert into Blood_Bank_Users(UserLoginName,UserPassword,UserName,Is_Admin)  values('" + TextBox5.Text + "','" + TextBox6.Text + "','" +TextBox1.Text + "','" + DropDownList1.SelectedValue.ToString() + "') ", con);

            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

            Label1.Text = "Staff Saved";

        }
        else
        {
            Label1.Text = "Error Staff Name Or Loginname  Found On System!!?";
        }
    }
}