using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AdministratorLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Blood_Bank_Users where UserLoginName='" + TextBox1.Text + "' and UserPassword ='" + TextBox2.Text + "' and Is_Admin='"+DropDownList1.SelectedValue.ToString()+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string UserID = dt.Rows[0][0].ToString();
            string UserName = dt.Rows[0][3].ToString();
            Session["UserID"] = UserID;
            Session["UserName"] = UserName;
            if(DropDownList1.SelectedValue.ToString()=="Admin")
                Response.Redirect("ViewDonors.aspx");
            else
                Response.Redirect("StaffDonors.aspx");

          
        }
        else
        {
            Response.Write("<script>alert('Please Enter valid Loginname and LoginPassword')</script>");
        }
    }
}