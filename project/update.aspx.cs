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
    public partial class update1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\mydb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string upd = "Update addbus set Bus_no = @Bus_no, Bus_type = @Bus_type, Seat_rows = @Seat_rows, Seat_column = @Seat_column, Origin = @Origin, Destination = @Destination, Bus_name = @Bus_name, Date = @Date, Time = @Time, No_of_seats = @No_of_seats, Fair = @Fair where Bus_Id = @Bus_Id";

            using (SqlCommand com = new SqlCommand(upd, con))
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
                com.Parameters.AddWithValue("@Bus_Id", Convert.ToInt32(txtupdate.Text));
                com.Parameters.AddWithValue("@No_of_seats", Textseats.Text);
                com.Parameters.AddWithValue("@Fair", txtfair.Text);


                con.Open();
                int rowsAffected = com.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {

                    lblMessage1.Text = "Record is updated successfully.";
                }
                else
                {

                    lblMessage1.Text = "ID not present. Please enter a valid ID.";
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