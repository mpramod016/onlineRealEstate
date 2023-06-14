using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
    public static String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    string connStr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlCommand com;
    string str;
    SqlDataReader rdr = null;
    SqlConnection con = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AutoId();
        }

    }
    private void AutoId()
    {
        int Num = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string sql = "SELECT MAX(ID+1) FROM Membertbl";
        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        if (Convert.IsDBNull(cmd.ExecuteScalar()))
        {
            Num = 1;
            lblID.Text = Convert.ToString(Num);
            lblM.Text = Convert.ToString("MEMBER" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblID.Text = Convert.ToString(Num);
            lblM.Text = Convert.ToString("MEMBER" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand check_Email = new SqlCommand("Select * from Membertbl Where Mail=@Mail", conn);
        check_Email.Parameters.AddWithValue("@Mail", txtMail.Text);
        SqlDataReader rdr = check_Email.ExecuteReader();
        if (rdr.HasRows)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Email Id Already Exits. Try Another..!!" + "');", true);
            conn.Close();
        }
        else
        {
            if ( txtMail.Text != "" && txtPassword.Text != "" && txtConfirmPassword.Text != "")
            {
                if (txtPassword.Text == txtConfirmPassword.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Membertbl (MemberId,Mail,Password)values('" + lblM.Text + "','" + txtMail.Text + "','" + txtPassword.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Registration Successfull" + "');", true);
                        Response.Redirect("LoginPage.aspx");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Passwords do not match" + "');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "All Fields Are Mandatory" + "');", true);
            }

        }
    }
}