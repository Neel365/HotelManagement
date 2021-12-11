using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Booking : System.Web.UI.Page
{
    string BookingNo;
    int HotelId;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);
    int totalprice;
    

    protected void BindType()
    {
        string cat = "Select t.RoomTypeId,t.RoomTypeName from tbl_Room as r join tbl_Room_Type as t on r.RoomTypeId=t.RoomTypeId where r.HotelId=" + Convert.ToInt32(Request.QueryString["Name1"].ToString());
        SqlCommand cmd = new SqlCommand(cat, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();
        ddlRoomType.DataSource = ds;
        ddlRoomType.DataTextField = "RoomTypeName";
        ddlRoomType.DataValueField = "RoomTypeId";
        ddlRoomType.DataBind();

        ddlRoomType.Items.Insert(0, new ListItem("--- Select Room Type---", "-1"));

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQueryString = Request.QueryString.ToString();
        if (strQueryString.Contains("Name1"))
        {
            HotelId = Convert.ToInt32(Request.QueryString["Name1"].ToString());
            if (!IsPostBack)
            {

                BindType();
                txtMembers.Enabled = false;
                txtRooms.Enabled = false;
                txtCheckIn.Enabled = false;
                txtCheckOut.Enabled = false;
                txtName.Enabled = false; ;
                txtEmail.Enabled = false;
                txtPhone.Enabled = false;
                txtMessage.Enabled = false;

            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

   
  
    protected int Rooms(int Members)
    {
        int GuestNo = Members;
        int RoomNo;
        if ((GuestNo % 3) == 0)
        {
            RoomNo = GuestNo / 3;
            return RoomNo;
        }
        else
        {
            RoomNo = (GuestNo / 3) + 1;
            return RoomNo;
        }
    }
    protected void txtMembers_TextChanged(object sender, EventArgs e)
    {

        int RoomNo, GuestNo;
        if (txtMembers.Text != "" && txtRooms.Text == "")
        {

            GuestNo = Convert.ToInt32(txtMembers.Text);
            RoomNo = Rooms(GuestNo);
            lblinfo.Visible = true;
            lblinfo.Text = "Note: Minimum No of Room Required " + RoomNo;
        }
        else if (txtMembers.Text != "" && txtRooms.Text != "")
        {
            int Room;
            GuestNo = Convert.ToInt32(txtMembers.Text);
            RoomNo = Convert.ToInt32(txtRooms.Text);
            Room = Rooms(GuestNo);
            if (Room > RoomNo)
            {
                txtCheckIn.Enabled = false;
                txtCheckOut.Enabled = false;
                lblError.Visible = true; 
                txtRooms.Text = "";
                lblError.Text = "Sorry: Minimum " + Room + " Room Required";
            }
            else
            {
                txtCheckIn.Enabled = true;
                txtCheckOut.Enabled = true;
                lblError.Visible = false;
            }

        }
        else
        {
            lblError.Text = "Please fill no of Member ";
        }
    }
    protected void txtRooms_TextChanged(object sender, EventArgs e)
    {

        int RoomNo, GuestNo;
        if (txtMembers.Text != "" && txtRooms.Text != "")
        {
            int Room;
            GuestNo = Convert.ToInt32(txtMembers.Text);
            RoomNo = Convert.ToInt32(txtRooms.Text);
            Room = Rooms(GuestNo);
            if (Room > RoomNo)
            {
                txtCheckIn.Enabled = false;
                txtCheckOut.Enabled = false;
                lblError.Visible = true;
                txtRooms.Text = "";
                lblError.Text = "Sorry: Minimum " + Room + " Room Required";
            }
            else
            {
                txtCheckIn.Enabled = true;
                txtCheckOut.Enabled = true;
                lblError.Visible = false;
                lblinfo.Visible = false;
            }

        }
        else if (txtRooms.Text == "" && txtMembers.Text != "")
        {

            lblError.Visible = true;
            lblError.Text = "Please! Fill No of Room Required ";

        }
        else
        {

            lblError.Visible = true;
            lblError.Text = "Please! Fill No of Member ";

        }

    }
    protected void txtCheckIn_TextChanged(object sender, EventArgs e)
    {

        int RoomNo, GuestNo, price;
        if (txtMembers.Text == null || txtRooms.Text == null || ddlRoomType.SelectedValue == "-1")
        {
            lblError.Text = "Please fill above fields";
            txtCheckIn.Text = null;
        }
        else
        {

            DateTime CheckIn = Convert.ToDateTime(txtCheckIn.Text);
            if (CheckIn < DateTime.Now.Date)
            {
                lblError.Visible = true;
                lblError.Text = "Please Enter Check In date greater than current date or today";
                txtCheckIn.Text = null;
            }
            else
            {
                lblError.Visible = false;
                if (txtCheckOut.Text != "" && txtCheckIn.Text != "")
                {
                    RoomNo = Convert.ToInt32(txtRooms.Text);
                    GuestNo = Convert.ToInt32(txtMembers.Text);
                    price = Convert.ToInt32(lblPrice.Text);
                    DateTime datein = Convert.ToDateTime(txtCheckIn.Text);
                    DateTime dateout = Convert.ToDateTime(txtCheckOut.Text);

                    int diff = Convert.ToInt32((dateout - datein).TotalDays.ToString());
                    if (diff < 0)
                    {
                        lblError.Visible = true;
                        lblinfo.Visible = false;
                        lblError.Text = "Select Check In date Older than Check Out date";
                        txtCheckOut.Text = null;
                    }
                    else
                    {

                        int days = (Convert.ToInt32((dateout - datein).TotalDays.ToString())) + 1;
                        totalprice = RoomNo * price * days;
                        lblinfo.Visible = true;
                        lblinfo.Text = "Total Amount = Rs. " + totalprice.ToString() + "/-";
                        Session["total"] = totalprice.ToString();
                    }

                }
                else if (txtCheckOut.Text != "" && txtCheckIn.Text == "")
                {

                    lblError.Visible = true;
                    lblError.Text = "Please Select your check in date";

                }
            }
        } 
    }
    protected void txtCheckOut_TextChanged(object sender, EventArgs e)
    {
       
        
        if (txtMembers.Text == null || txtRooms.Text == null || txtCheckIn.Text == null || ddlRoomType.SelectedValue == "-1")
        {
            lblError.Text = "Please fill above fields";
            txtCheckOut.Text = null;
        }
        else
        {
            if (txtCheckOut.Text != "" && txtCheckIn.Text != "")
                {
                    int RoomNo, GuestNo, price;

                    RoomNo = Convert.ToInt32(txtRooms.Text);
                    GuestNo = Convert.ToInt32(txtMembers.Text);
                    price = Convert.ToInt32(lblPrice.Text);
                    DateTime datein = Convert.ToDateTime(txtCheckIn.Text);
                    DateTime dateout = Convert.ToDateTime(txtCheckOut.Text);
                    int diff = Convert.ToInt32((dateout - datein).TotalDays.ToString());
                 if (diff < 0)
                  {
                lblError.Visible = true;
                lblinfo.Visible = false;
                lblError.Text = "Select Check Out date Greater than Check In date";
                txtCheckOut.Text = null;
                     }
                 else
                 {
                    int days = Convert.ToInt32((dateout - datein).TotalDays.ToString()) + 1;
                    totalprice = RoomNo * price * days;
                    Session["total"] = totalprice.ToString();
                    lblError.Visible = false; ;
                    lblinfo.Visible = true;
                    lblinfo.Text = "Total Amount = Rs. " + totalprice.ToString() + "/-";
                    txtName.Enabled = true;
                    txtEmail.Enabled = true;
                    txtPhone.Enabled = true;
                    txtMessage.Enabled = true;

                }
              
                } 
            else
                {
                    lblError.Visible = true;
                    lblError.Text = "Please Select your check out date";

            }
        }
        
    }
    protected void SendMail()
    {
        MailMessage email = new MailMessage();
        email.From = new MailAddress("projhotelbooking@gmail.com"); //Enter sender email address.
        email.To.Add(txtEmail.Text); //Destination Recipient e-mail address.
        email.Subject = "Hotel Project Booking Details"; //Subject for your request.
        email.Body = "Hi,Your Booking done successfully.<br><br> Your Booking Number is : " + BookingNo+"<br><br> Use this Number to cancel your Booking";

        email.IsBodyHtml = true;
        //SMTP SERVER DETAILS
        SmtpClient smtpc = new SmtpClient("smtp.gmail.com", 587);
        //smtpc.Port = 587;
        smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpc.UseDefaultCredentials = false;
        smtpc.EnableSsl = true;
        smtpc.Credentials = new System.Net.NetworkCredential("projhotelbooking@gmail.com", "PalBiswas@123");
        smtpc.Send(email);
        string script = @"<script language=""javascript""> alert('Hi,Your Booking done successfully, Booking Details has been sent to your Email address');
                 </script>;";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
        try
        {
            BookingNo = (DateTime.UtcNow.ToString("yyMMdhhmmss")).ToString();

            String book = "insert into tbl_Booking(HotelId,RoomTypeId,Name,Email,Phone,CheckInDate,CheckOutDate,RoomNo,MemberNo,TotalAmount,BookingNo) values('"+HotelId+"','" + ddlRoomType.SelectedValue + "','" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtCheckIn.Text + "','" + txtCheckOut.Text + "','" + Convert.ToInt32(txtRooms.Text) + "','" + Convert.ToInt32(txtMembers.Text) + "','" + Convert.ToInt32(Session["total"].ToString()) + "','" + BookingNo + "') ";
                SqlCommand cmd = new SqlCommand(book, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close(); 
                Session.Remove("total");
                SendMail();
                Response.Redirect("Booking.aspx?Name1="+HotelId.ToString());
           
            
        }
        catch (Exception ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Please Try Again"+ex;
        }
    }
    protected void ddlRoomType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlRoomType.SelectedValue!="-1")
        {
        String price = "select RoomId,RoomPrice from tbl_Room where RoomTypeId='" + ddlRoomType.SelectedValue + "' and HotelId='" + Convert.ToInt32(Request.QueryString["Name1"].ToString()) + "'";
        SqlCommand cmd = new SqlCommand(price, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtMembers.Enabled = true;
            txtRooms.Enabled = true;
            lblPrice.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
           lblPrice.Text = dr["RoomPrice"].ToString();
        }
        }
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}