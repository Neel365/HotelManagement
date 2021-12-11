using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_Bookings : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);


    public void Bind_Grid1()
    {
        string sql = "SELECT  b.BookingId,h.HotelName,r.RoomTypeName,b.Name,b.Email,b.Phone,b.CheckInDate, b.CheckOutDate,b.RoomNo,b.MemberNo,b.TotalAmount,b.BookingNo from tbl_Booking as b join tbl_Hotel as h on b.HotelId=h.HotelId join tbl_Room_Type as r on b.RoomTypeId=r.RoomTypeId";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();

        if (ds != null)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void GridView1_IndexChanging(object sender, GridViewPageEventArgs e)
    {
       // Bind_Grid1();
        GridView1.PageIndex = e.NewPageIndex;
        this.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else
        {
            Bind_Grid1();
        }
    }


    public void Bind_Grid1(string date)
    {
        string sql = "SELECT  b.BookingId, h.HotelName,r.RoomTypeName,b.Name,b.Email,b.Phone,b.CheckInDate,b.CheckOutDate,b.RoomNo,b.MemberNo,b.TotalAmount,b.BookingNo from tbl_Booking as b join tbl_Hotel as h on b.HotelId = h.HotelId join tbl_Room_Type as r on b.RoomTypeId = r.RoomTypeId where b.CheckInDate = '"+date+"'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();
        

        if (ds != null)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string[] str = Calendar1.SelectedDate.ToShortDateString().Split('-');
        string date = string.Format("{0}-{1}-{2}", str[2], str[1], str[0]); 

        Bind_Grid1(date);
    }
}