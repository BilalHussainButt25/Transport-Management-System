using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class userbooking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [customer] (First_name, Last_name, Phone_No, Address, No_of_seats,Bus_Id) values (@First_name, @Last_name, @Phone_No, @Address, @No_of_seats,@Bus_Id)";
            using (SqlCommand com = new SqlCommand(ins, con))
            {
                com.Parameters.AddWithValue("@First_name", txtfname.Text);
                com.Parameters.AddWithValue("@Last_name", txtlname.Text);
                com.Parameters.AddWithValue("@Phone_No", txtpnumber.Text);
                com.Parameters.AddWithValue("@Address", txtaddress.Text);
                com.Parameters.AddWithValue("@No_of_seats", TxtNoOfseats.Text);
                com.Parameters.AddWithValue("@Bus_Id", txtbusId.Text);
                con.Open();
                int rowsAffected = com.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Ticket has beeen booked successfully.";
                }
                else
                {
                    lblMessage.Text = "An error occurred while entering the record.";
                }
                txtfname.Text = "";
                txtlname.Text = "";
                txtpnumber.Text = "";
                txtaddress.Text = "";
                TxtNoOfseats.Text = "";
                txtbusId.Text = "";
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string Origin = txtOrigin.Text;
            string Destination = txtDestination.Text;

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");

            // Use a parameterized query instead of concatenating user inputs
            string check = "SELECT * FROM addbus WHERE Origin = @Origin AND Destination = @Destination";

            // Use using statements to ensure proper disposal of objects
            using (con)
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(check, con))
                {
                    // Add parameters with values
                    cmd.Parameters.AddWithValue("@Origin", Origin);
                    cmd.Parameters.AddWithValue("@Destination", Destination);

                    // Use ExecuteReader method instead of ExecuteNonQuery method
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            gvSearchResults.DataSource = rdr;
                            gvSearchResults.DataBind();
                            lblError.Text = "";
                        }
                        else
                        {
                            lblError.Text = "No buses found for the given origin and destination.";
                            lblError.ForeColor = Color.Red;
                            // Clear any previous search results
                            gvSearchResults.DataSource = null;
                            gvSearchResults.DataBind();
                        }
                    }
                }
            }
            }
    }
}