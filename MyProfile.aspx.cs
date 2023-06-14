using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;

public partial class MyProfile : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblID.Text = Session["MemberId"].ToString();
            BindCategory1();
            BindCategory2();
            BindCategory3();
            string sql = "select * from Membertbl where MemberId='" + lblID.Text + "'";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
            SqlDataAdapter adpt = new SqlDataAdapter(sql, con.ConnectionString);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtDOB.Text = dt.Rows[0]["DOB"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
            ddlCountry.SelectedItem.Text = dt.Rows[0]["Country"].ToString();
            ddlState.SelectedItem.Text = dt.Rows[0]["State"].ToString();
            ddlDistrict.SelectedItem.Text = dt.Rows[0]["District"].ToString();
            txtContact.Text = dt.Rows[0]["ContactNumber"].ToString();
            txtMail.Text = dt.Rows[0]["Mail"].ToString();
            ddlRealter.Text = dt.Rows[0]["Realtor"].ToString();
        }
    }
    private void BindCategory1()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Countrytbl", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlCountry.DataSource = dt;
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataValueField = "CountryName";
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
    private void BindCategory2()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Statetbl", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlState.DataSource = dt;
                ddlState.DataTextField = "StateName";
                ddlState.DataValueField = "StateName";
                ddlState.DataBind();
                ddlState.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
    private void BindCategory3()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Districttbl", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlDistrict.DataSource = dt;
                ddlDistrict.DataTextField = "DistrictName";
                ddlDistrict.DataValueField = "DistrictName";
                ddlDistrict.DataBind();
                ddlDistrict.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblID.Text = Session["MemberId"].ToString();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string myquery = null;
        myquery = "Update Membertbl Set Name='" + txtName.Text + "',DOB='" + txtDOB.Text + "',Address='" + txtAddress.Text + "',Country='" + ddlCountry.Text + "',State='" + ddlState.Text + "',District='" + ddlDistrict.Text + "',ContactNumber='" + txtContact.Text + "',Mail='" + txtMail.Text + "',Realtor='" + ddlRealter.Text + "' Where MemberId='" + lblID.Text + "'";
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = myquery;
        cmd.ExecuteNonQuery();
    }
}