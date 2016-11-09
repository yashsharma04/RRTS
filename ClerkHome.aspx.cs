using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClerkHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void func(Object sender , EventArgs e )
    {
        Response.Redirect("~/RequestDetails.aspx");    
    }
}