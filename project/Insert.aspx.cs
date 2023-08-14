using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Insert1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [addbus] (Bus_no, Bus_type, Seat_rows, Seat_column, Origin, Destination, Bus_name,Date, Time, No_of_seats, Fair) values (@Bus_no, @Bus_type, @Seat_rows, @Seat_column, @Origin, @Destination, @Bus_name, @Date, @Time, @No_of_seats, @Fair)";
            using (SqlCommand com = new SqlCommand(ins, con))
            {
                com.Parameters.AddWithValue("@Bus_no", txtbusno.Text);
                com.Parameters.AddWithValue("@Bus_type", ddltype.Text);
                com.Parameters.AddWithValue("@Seat_rows", txtrow.Text);
                com.Parameters.AddWithValue("@Seat_column", txtcolumn.Text);
                com.Parameters.AddWithValue("@Origin", txtorign.Text);
                com.Parameters.AddWithValue("@Destination", txtdestination.Text);
                com.Parameters.AddWithValue("@Bus_name", txtbusname.Text);
                com.Parameters.AddWithValue("@Date", txtdate.Text);
                com.Parameters.AddWithValue("@Time", txttime.Text);
                com.Parameters.AddWithValue("@No_of_seats", Textseats.Text);
                com.Parameters.AddWithValue("@Fair", txtfair.Text);

                con.Open();
                int rowsAffected = com.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {

                    lblMessage.Text = "Record is Entered successfully.";
                }
                else
                {

                    lblMessage.Text = "An error occurred while entering the record.";
                }
                txtbusno.Text = "";
                ddltype.Text = "";
                txtrow.Text = "";
                txtcolumn.Text = "";
                txtorign.Text = "";
                txtdestination.Text = "";
                txtbusname.Text = "";
                txtdate.Text = "";
                txttime.Text = "";
                Textseats.Text = "";
                txtfair.Text = "";
            }
        }
    }
}