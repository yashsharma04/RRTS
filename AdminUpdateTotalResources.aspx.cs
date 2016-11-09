using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Xml;

public partial class AdminUpdateTotalResources : System.Web.UI.Page
{
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;
    public static int SkilledManpower,UnskilledManpower,Lifters,HeavyMachineOperators,AsphaltMixer,Roller,Crane;
    public static int uSkilledManpower, uUnskilledManpower, uLifters, uHeavyMachineOperators, uAsphaltMixer, uRoller, uCrane;

    public void updateAvailable(int SM,int UM,int L,int HMO,int AM,int R,int C)
    { 
            string selectSQL = "SELECT * FROM [Resources] WHERE id = '2'";
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
                    SkilledManpower = SM + Convert.ToInt16(reader["SkilledManpower"].ToString());
                    UnskilledManpower = UM + Convert.ToInt16(reader["UnskilledManpower"].ToString());
                    Lifters = L + Convert.ToInt16(reader["Lifters"].ToString());
                    HeavyMachineOperators = HMO + Convert.ToInt16(reader["HeavyMachineOperators"].ToString());
                    AsphaltMixer = AM + Convert.ToInt16(reader["AsphaltMixer"].ToString());
                    Roller = R + Convert.ToInt16(reader["Roller"].ToString());
                    Crane = C + Convert.ToInt16(reader["Crane"].ToString());
                }
                reader.Close();
            }
            catch (Exception err)
            {
                Label2.Text = "Selection Mistake";
                Label2.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
            string updateSQL = "UPDATE [Resources] SET "
            + "SkilledManpower = '" + SkilledManpower.ToString()
            + "', UnskilledManpower = '" + UnskilledManpower.ToString()
            + "', Lifters = '" + Lifters.ToString()
            + "', HeavyMachineOperators = '" + HeavyMachineOperators.ToString()
            + "', AsphaltMixer = '" + AsphaltMixer.ToString()
            + "', Roller = '" + Roller.ToString()
            + "', Crane = '" + Crane.ToString()
            + "' WHERE Id = '2'";
            SqlConnection con1 = new SqlConnection(connectionString);
            SqlCommand cmd1 = new SqlCommand(updateSQL, con1);
            // Try to open database and read information.
            int added = 0;
            try
            {
                con1.Open();
                added = cmd1.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                Label2.Text = "Error inserting record. ";
                Label2.Text += err.Message;
            }
            finally
            {
                con1.Close();
            }
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
                    uSkilledManpower = Convert.ToInt16(TextBox1.Text);
                    uUnskilledManpower = Convert.ToInt16(TextBox2.Text);
                    uLifters = Convert.ToInt16(TextBox3.Text);
                    uHeavyMachineOperators = Convert.ToInt16(TextBox4.Text);
                    uAsphaltMixer = Convert.ToInt16(TextBox5.Text);
                    uRoller = Convert.ToInt16(TextBox6.Text);
                    uCrane = Convert.ToInt16(TextBox7.Text);
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
                string file = Path.Combine(Request.PhysicalApplicationPath, @"Products.xml");
                FileStream fs = new FileStream(file, FileMode.Create);
                XmlTextWriter w = new XmlTextWriter(fs, null);
                w.WriteStartDocument();
                w.WriteStartElement("Info");
                w.WriteAttributeString("Skilled Manpower", uSkilledManpower.ToString());
                w.WriteAttributeString("Unskilled Manpower", uUnskilledManpower.ToString());
                w.WriteAttributeString("Lifters", uLifters.ToString());
                w.WriteAttributeString("Heavy Machine Operators", uHeavyMachineOperators.ToString());
                w.WriteEndElement();
                w.WriteEndDocument();
                w.Close();
                fs.Close();
                updateAvailable(uSkilledManpower, uUnskilledManpower, uLifters, uHeavyMachineOperators, uAsphaltMixer, uRoller, uCrane);
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