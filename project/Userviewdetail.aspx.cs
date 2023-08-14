using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Userviewdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");
            string qry = "select * from customer";
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            gvadd.DataSource = rdr;
            gvadd.DataBind();
            con.Close();
        }
    }
}