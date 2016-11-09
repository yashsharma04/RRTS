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
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(Object sender ,EventArgs e )
    {
    }
    protected void btn1_Click1(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from [Repair]", con);
        try
        {
            con.Open();
            SqlDataReader r;
            r = cmd.ExecuteReader();
            int id = 0;
            while (r.Read())
            {
                id = Convert.ToInt32(r["id"].ToString());
            }
            r.Close();
            Label2.Text += id.ToString();
            int idd = id + 1;

            String street1 = street.Text;
            String locality1 = locality.Text;
            String no = potholes.Text;
            String sev = RadioButtonList1.SelectedValue;


            SqlCommand cmd1 = new SqlCommand("insert into [Repair] values ('" + idd + "','" + street1 + "','" + locality1 + "','" + no + "','" + sev + "')", con);

            int add = cmd1.ExecuteNonQuery();
            Response.Redirect("~/ClerkHome.aspx");    

        }
        catch (Exception err)
        {
            Label2.Text = err.Message;

        }
        finally
        {
            con.Close();

        }
    }
}
