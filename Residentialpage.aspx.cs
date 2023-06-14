using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Residentialpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindFarRepeater();        
        }
    }
    private void BindFarRepeater()
    {
        string ID = Request.QueryString["ID"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from Propertytbl inner join  PropertyImagetbl on Propertytbl.PropertyId =PropertyImagetbl.PropertyId Where  Propertytbl.PropertyType='Residential' And Propertytbl.PropertyId='"+ ID +"'", con))
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