using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminUpdateTotalResources : System.Web.UI.Page
{
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;
    public static int SkilledManpower,UnskilledManpower,Lifters,HeavyMachineOperators,AsphaltMixer,Roller,Crane;

    public void updateAvailable(int SkilledManpower,int UnskilledManpower,int Lifters,int HeavyMachineOperators,int AsphaltMixer,int Roller,int Crane)
    { 
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            string selectSQL = "SELECT * FROM [Resources] WHERE id = '1'";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            // Try to open database and read information.
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    SkilledManpower = Convert.ToInt16(TextBox1.Text) + Convert.ToInt16(reader["SkilledManpower"].ToString());
                    UnskilledManpower = Convert.ToInt16(TextBox2.Text) + Convert.ToInt16(reader["UnskilledManpower"].ToString());
                    Lifters = Convert.ToInt16(TextBox3.Text) + Convert.ToInt16(reader["Lifters"].ToString());
                    HeavyMachineOperators = Convert.ToInt16(TextBox4.Text) + Convert.ToInt16(reader["HeavyMachineOperators"].ToString());
                    AsphaltMixer = Convert.ToInt16(TextBox5.Text) + Convert.ToInt16(reader["AsphaltMixer"].ToString());
                    Roller = Convert.ToInt16(TextBox6.Text) + Convert.ToInt16(reader["Roller"].ToString());
                    Crane = Convert.ToInt16(TextBox7.Text) + Convert.ToInt16(reader["Crane"].ToString());
                    Label1.Text = "<h3>Updated Values</h3>"
                    + "Skilled Manpower : " + SkilledManpower.ToString()
                    + "<br/>Unskilled Manpower : " + UnskilledManpower.ToString()
                    + "<br/>Lifters : " + Lifters.ToString()
                    + "<br/>Heavy Machine Operators : " + HeavyMachineOperators.ToString()
                    + "<br/>Asphalt Mixer : " + AsphaltMixer.ToString()
                    + "<br/>Roller : " + Roller.ToString()
                    + "<br/>Crane : " + Crane.ToString();
                }
                reader.Close();
                Button2.Enabled = true;
            }
            catch (Exception err)
            {
                Label2.Text = "Insertion Mistake";
                Label2.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
            string selectSQL = "UPDATE [Resources] SET "
            + "SkilledManpower = '" + SkilledManpower.ToString()
            + "', UnskilledManpower = '" + UnskilledManpower.ToString()
            + "', Lifters = '" + Lifters.ToString()
            + "', HeavyMachineOperators = '" + HeavyMachineOperators.ToString()
            + "', AsphaltMixer = '" + AsphaltMixer.ToString()
            + "', Roller = '" + Roller.ToString()
            + "', Crane = '" + Crane.ToString()
            + "' WHERE Id = '1'";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            // Try to open database and read information.
            int added = 0;
            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                Button1.Enabled = false;
                Button2.Enabled = false;
                GridView1.DataBind();
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
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
}