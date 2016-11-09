using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool loginFlag = false;
        string email = TextBox1.Text;
        string passw = TextBox2.Text;
        string type = RadioButtonList1.SelectedValue;
        string selectSQL = "SELECT * FROM [Table] WHERE email = '" + email +"' and Password = '" + passw + "' and type = '" + type + "'";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;
        // Try to open database and read information.
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                loginFlag = true;
                Session["login"] = "True";
            }
            reader.Close();
        }
        catch (Exception err)
        {
            Label2.Text = "Username or Password Wrong";
            Label2.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
        if(loginFlag)
        {
         //Redirect to other page
            switch(type)
            {
                case "Clerk":
                    {
                        Response.Redirect("ClerkHome.aspx");
                        break;
                    }
                case "Admin":
                    {
                        Response.Redirect("AdminHome.aspx");
                        break;
                    }
                case "Supervisor":
                    {
                        Response.Redirect("SupervisorHome.aspx");
                        break;
                    }
            }
        }
       else
       {
           Label2.Text = "Username, Password or Category wrong";
       }
    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
}