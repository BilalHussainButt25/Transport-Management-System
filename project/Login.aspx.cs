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
    public partial class Login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string check = "select count (*) from [register] where Email_id = '" + txtlusername.Text + "' and Password = '" + txtlpassword.Text + "'";
            SqlCommand cmd = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("Origin_Destination.aspx");
            }
            else
            {
                lbllabel.Text = "Invalid";
            }
        }
    }
}
