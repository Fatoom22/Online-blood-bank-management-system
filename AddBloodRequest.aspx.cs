using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AddBloodRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
            con.Open();
            string CenterID = Session["UserID"].ToString();
            SqlCommand cmd = new SqlCommand("insert into Health_Center_Blood_Request(CenterID,BloodGroup,NumberOfUnits)  values("+CenterID+",'" + DropDownList1.SelectedValue.ToString() + "'," + TextBox4.Text + ") ", con);

            cmd.ExecuteNonQuery();

            TextBox4.Text = "";

            Label1.Text = "Request Saved";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}