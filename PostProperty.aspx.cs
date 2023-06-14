using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class PostProperty : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMID.Text = Session["MemberId"].ToString();
            AutoId();
            BindCategory1();
            BindCategory2();
            BindCategory3();
            BindCategory4();
        }
    }
    private void AutoId()
    {
        int Num = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string sql = "SELECT MAX(ID+1) FROM Propertytbl";
        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        if (Convert.IsDBNull(cmd.ExecuteScalar()))
        {
            Num = 1;
            lblID.Text = Convert.ToString(Num);
            lblProperty.Text = Convert.ToString("P" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblID.Text = Convert.ToString(Num);
            lblProperty.Text = Convert.ToString("P" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

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
    private void BindCategory4()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from BuildingTypetbl", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlBuilding.DataSource = dt;
                ddlBuilding.DataTextField = "BuildingType";
                ddlBuilding.DataValueField = "BuildingType";
                ddlBuilding.DataBind();
                ddlBuilding.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Propertytbl values('" + lblProperty.Text + "','" + ddlpropertyType.SelectedItem.Text + "','" + ddlRoom.SelectedItem.Text + "','" + ddlBuilding.SelectedItem.Text + "','" + ddlrent.SelectedItem.Text + "','" + txtBuilding.Text + "','" + txtStreetName.Text + "','" + txtBuildingName.Text + "','" + txtPostalCode.Text + "','" + ddlCountry.SelectedItem.Text + "','" + ddlState.SelectedItem.Text + "','" + ddlDistrict.SelectedItem.Text + "','" + txtEmail.Text + "','" + txtPrice.Text + "','" + txtValuation.Text + "','" + txtArea.Text + "','" + txtAge.Text + "','" + txtBedRooms.Text + "','" + txtSummary.Text + "','" + txtDescription.Text + "','" + lblMID.Text + "')", con);

            cmd.ExecuteNonQuery();

            if (FileUpload1.HasFile)
            {
                string SavePath = Server.MapPath("Images/Property/") + lblProperty.Text;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(SavePath + "\\" + txtBuilding.Text.ToString().Trim() + "01" + Extention);

                SqlCommand cmd3 = new SqlCommand("insert into PropertyImagetbl values('" + lblProperty.Text + "','" + txtBuilding.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                cmd3.ExecuteNonQuery();
                string script = "alert(\"Successfull Added\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                Response.Redirect("MyProperty.aspx");
            }
        }
    }
}