using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class SuperVisorRepairDetails : System.Web.UI.Page
{
    string connectionString = WebConfigurationManager.ConnectionStrings["RRTSDBConnectionString"].ConnectionString;
    public static int SkilledManpower, UnskilledManpower, Lifters, HeavyMachineOperators, AsphaltMixer, Roller, Crane;
    public static int uSkilledManpower, uUnskilledManpower, uLifters, uHeavyMachineOperators, uAsphaltMixer, uRoller, uCrane;

    public void updateAvailable(int SM, int UM, int L, int HMO, int AM, int R, int C)
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
            // GET repair Id from query in URL.
            uSkilledManpower = Convert.ToInt16(TextBox1.Text);
            uUnskilledManpower = Convert.ToInt16(TextBox2.Text);
            uLifters = Convert.ToInt16(TextBox3.Text);
            uHeavyMachineOperators = Convert.ToInt16(TextBox4.Text);
            uAsphaltMixer = Convert.ToInt16(TextBox5.Text);
            uRoller = Convert.ToInt16(TextBox6.Text);
            uCrane = Convert.ToInt16(TextBox7.Text);
            string priority = DropDownList1.SelectedValue;
            int ongoing = 0;
            if(RadioButtonList1.SelectedValue == "Yes")
                ongoing = 1;
            string insertSQL;
            insertSQL = "INSERT INTO [Resources] (";
            insertSQL += "SkilledManpower, UnskilledManpower, Lifters, HeavyMachineOperators, AsphaltMixer, Roller, Crane, Ongoing, Priority) ";
            insertSQL += "VALUES ('";
            insertSQL += uSkilledManpower.ToString() + "', '";
            insertSQL += uUnskilledManpower.ToString() + "', '";
            insertSQL += uLifters.ToString() + "', '";
            insertSQL += uHeavyMachineOperators.ToString() + "', '";
            insertSQL += uAsphaltMixer.ToString() + "', '";
            insertSQL += uRoller.ToString() + "', '";
            insertSQL += uCrane.ToString() + "', '";
            insertSQL += ongoing.ToString() + "', '";
            insertSQL += priority + "')";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            // Try to open database and read information.
            int added;
            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                updateAvailable(-1*uSkilledManpower, -1*uUnskilledManpower, -1*uLifters, -1*uHeavyMachineOperators, -1*uAsphaltMixer, -1*uRoller, -1*uCrane);
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
    }
}