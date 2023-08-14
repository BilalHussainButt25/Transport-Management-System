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
    public partial class Registration1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [register] (Name, Email_id, Password) values (@name, @email, @password)";
            SqlCommand com = new SqlCommand(ins, con);

            com.Parameters.AddWithValue("@name", txtname.Text);
            com.Parameters.AddWithValue("@email", txtemail.Text);
            com.Parameters.AddWithValue("@password", txtrpassword.Text);

            con.Open();
            int rowsAffected = com.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registered successfully');window.location ='login.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration failed');", true);
            }

        
    }
    }
}