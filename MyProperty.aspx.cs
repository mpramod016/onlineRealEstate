using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMID.Text = Session["MemberId"].ToString();
            BindFareRepeater();

        }
    }
    private void BindFareRepeater()
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Propertytbl Where MemberID='" + lblMID.Text + "'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    Repeater1.DataSource = dtBrands;
                    Repeater1.DataBind();
                }

            }
        }
    }
}