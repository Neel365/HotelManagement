using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Data;

public partial class CancelBooking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        
            string st = "select * from tbl_Booking where Email='" + txtEmail.Text + "' and BookingNo='" + txtNumber.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                string cancel = "delete tbl_Booking where Email='" + txtEmail.Text + "' and BookingNo='" + txtNumber.Text + "'";
                SqlCommand cmd1 = new SqlCommand(cancel, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                lblmsg.Visible = true;
                lblmsg.Text = "Booking Canceled Successfully";

            }
            else
            {
                con.Close();
                lblmsg.Visible = true;
                lblmsg.Text = "Email address or Booking Number is wrong";
            }

        
    }
}