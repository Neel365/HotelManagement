using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string strQueryString = Request.QueryString.ToString();
        if (strQueryString.Contains("Name1") && strQueryString.Contains("Name2"))
        {

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

    protected void BindGrid()
    {
        string select_Hotel = "";
        if ((Request.QueryString["Name1"] != "-1") && (Request.QueryString["Name2"] != "-1"))
        {
            select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h Where  h.StateId='" + Convert.ToInt32(Request.QueryString["Name1"].ToString()) + "' and  h.CityId='" + Convert.ToInt32(Request.QueryString["Name2"].ToString()) + "'";
        }
        else if ((Request.QueryString["Name1"] != "-1") && (Request.QueryString["Name2"] == "-1"))
        {
            select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h Where  h.StateId='" + Convert.ToInt32(Request.QueryString["Name1"].ToString()) + "' ";
        }
        else
        {
            select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h ";
        }

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
    protected void btnContinue_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Booking.aspx");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];

        int HotelId = Convert.ToInt32(((Label)GridView1.Rows[e.RowIndex].FindControl("lblHotelId")).Text.ToString());

        Server.Transfer("Single.aspx?Name1="+HotelId);
    }
    protected void btnNameSearch_Click(object sender, EventArgs e)
    {
        string  select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h  where h.HotelName LIKE '%"+txtName.Text+"%' ";
        

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
    protected void btnPriceSearch_Click(object sender, EventArgs e)
    {
        string select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From btl_Room as r  join tbl_Hotel as h on r.HotelId=h.HotelId where r.Price>='" + Convert.ToInt32(txtMinPrice.Text) + "' and r.Price<='" + Convert.ToInt32(txtMaxPrice.Text) + "' ";


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
    protected void btnDstSearch_Click(object sender, EventArgs e)
    {
        string select_Hotel = "";
        if (ddlDistance.SelectedValue.ToString() == "Air")
        {
            select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h where CONVERT(INT, h.AirPort)  >='" + Convert.ToInt32(txtMinkm.Text) + "' and CONVERT(INT, h.AirPort) <='" + Convert.ToInt32(txtMaxkm.Text) + "' ";
        }
        else if (ddlDistance.SelectedValue.ToString() == "Railway")
        {
            select_Hotel = "Select h.HotelId, h.HotelName, ISNULL(h.Address1,'') + ' ' + ISNULL(h.Address2,'') as Address,h.ImagePath as Path,h.Star, h.Price,h.AirPort,h.RailwayStation,h.LandMark From tbl_Hotel as h where CONVERT(INT, h.RailwayStation)>='" + Convert.ToInt32(txtMinkm.Text) + "' and CONVERT(INT, h.RailwayStation) <='" + Convert.ToInt32(txtMaxkm.Text) + "' ";
        }
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
}