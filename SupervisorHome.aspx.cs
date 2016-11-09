using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupervisorHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == "False" || Session["login"] == null || Session["login"] == "")
        {
            Response.Redirect("~/login.aspx");
        }

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //Label2.Text += "Something Happened : " + e.CommandArgument.ToString() + " " + e.CommandName.ToString();
        if (e.CommandName == "Click")
        {
            Label2.Text += "You clicked product #" + e.CommandArgument.ToString();
            String redirect = "SuperVisorRepairDetails.aspx?id=" + e.CommandArgument.ToString();
            Response.Redirect(redirect);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["login"] = "False";
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchRequest.aspx");
    }
}