using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class EditBloodRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Bloodbank.mdf;Integrated Security=True");
                con.Open();

                SqlCommand cmd = new SqlCommand("delete from Health_Center_Blood_Request where RequestID="+id+"", con);

                cmd.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
        }
    }
}