using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.EnterpriseServices.CompensatingResourceManager;

namespace project
{
    public partial class Origin_Destination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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