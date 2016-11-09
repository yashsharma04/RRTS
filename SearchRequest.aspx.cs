using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search()
    {
        String str1 = locality.Text;
        
        SqlDataSource sql = new SqlDataSource();
        sql.ID = "sql1";
        this.Page.Controls.Add(sql);
        sql.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;
        sql.SelectCommand = "SELECT * from [Repair] where locality='"+locality+"'";
        GridView1.DataSource = sql;
        GridView1.DataBind(); 
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchRequest.aspx");
    }
}