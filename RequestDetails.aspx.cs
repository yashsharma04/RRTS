using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class RequestDetails : System.Web.UI.Page
{
    private String connectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(Object sender, EventArgs e)
    {
        connectionString = WebConfigurationManager.ConnectionStrings["db2"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from request", con);

        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        int id =0 ; 
        while (r.Read())
        {
            id = Convert.ToInt32(r["id"].ToString());       
        }
        r.Close();
        int idd = id + 1;
        String street1 = street.Text;
        String locality1 = locality.Text;
        
        SqlCommand cmd1 = new SqlCommand("insert into request(id,street,locality) values ('"+idd+"','"+street1+"','"+locality1+"')", con);
        
        int add = cmd1.ExecuteNonQuery();
        
        con.Close();
        Response.Redirect("~/ClerkHome.aspx");

    }
}