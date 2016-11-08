using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class register : System.Web.UI.Page
{
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string insertSQL;
        insertSQL = "INSERT INTO [Table] (";
        insertSQL += "FirstName,LastName,Password,email,Type)";
        insertSQL += "VALUES ('";
        insertSQL += TextBox1.Text + "', '";
        insertSQL += TextBox2.Text + "', '";
        insertSQL += TextBox3.Text + "', '";
        insertSQL += TextBox4.Text + "', '";
        insertSQL += DropDownList1.SelectedValue + "')";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);
        // Try to open the database and execute the update.
        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
            Label2.Text = added.ToString() + " records inserted.";
        }
        catch (Exception err)
        {
            Label2.Text = "Error inserting record. ";
            Label2.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
        // If the insert succeeded, refresh the author list.
        //if (added > 0)
        //{
        //    FillAuthorList();
        //}
    }
}