using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class delete1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string deleteCommand = "delete from addbus where Bus_Id= @Bus_Id";
            using (SqlCommand com = new SqlCommand(deleteCommand, con))
            {
                com.Parameters.AddWithValue("@Bus_Id", txtbusno.Text);

                con.Open();
                int rowsAffected = com.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {
                    // The bus was deleted
                    lblMessage.Text = "Deleted bus successfully.";
                }
                else
                {
                    // No such bus found
                    lblMessage.Text = "This bus is not available.";
                }
            }

        }
    }
}