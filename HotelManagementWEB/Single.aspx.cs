using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Single : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

    int HotelId;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQueryString = Request.QueryString.ToString();
        if (strQueryString.Contains("Name1"))
        {
            HotelId = Convert.ToInt32(Request.QueryString["Name1"].ToString());
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("Booking.aspx");
    }
    protected void BindGrid()
    {
        String select_Hotel = "Select h.HotelId,h.HotelName,h.Email,h.Phone, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,c.CityName,s.StateName,h.Description,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h join tbl_City as c on h.CityId=c.CityId join tbl_State as s on h.StateId=s.StateId Where  h.HotelId='" + HotelId + "'";
       SqlCommand cmd = new SqlCommand(select_Hotel, con);
       SqlDataAdapter adpt = new SqlDataAdapter(cmd);
       DataSet ds = new DataSet();
       con.Open();
       adpt.Fill(ds);
       con.Close();
       if (ds != null)
       {
           GridView1.DataSource = ds;
           GridView1.DataBind();
       }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        Response.Redirect("Booking.aspx?Name1=" + HotelId);
    }


   
}