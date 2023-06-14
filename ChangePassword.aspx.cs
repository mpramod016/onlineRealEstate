using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{  
    string CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlCommand com = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataReader dr;
    SqlDataAdapter da;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rdr = null;
    DataTable dtable = new DataTable();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            lblMID.Text= Session["MemberId"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int RowsAffected = 0;
    con = new SqlConnection(CS);

    con.Open();

    string co = "update Membertbl set Password='" + txtNewPassword.Text + "' where MemberId='" + lblMID.Text + "' And Password='" + txtOldPassword.Text + "'";
    cmd = new SqlCommand(co);

    cmd.Connection = con;
    RowsAffected = cmd.ExecuteNonQuery();
    if (RowsAffected > 0)
    {
        string script1 = "alert(\"Updated Sucessfully\");";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
        txtNewPassword.Text = "";
        txtOldPassword.Text = "";
    }
    else
    {
        string script = "alert(\"Password Not Exits Try Again!!!!\");";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        txtOldPassword.Text = "";
        txtOldPassword.Focus();
    }
}
    }