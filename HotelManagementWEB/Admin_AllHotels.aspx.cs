using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AllHotels : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);


    public void Bind_Grid1()
    {
        string sql = "SELECT  h.HotelId,h.HotelName,h.Email,h.Phone,h.Address1, h.Address2,c.CityName,s.StateName,h.Country,h.Star from tbl_Hotel as h join tbl_City as c on h.CityId=c.CityId join tbl_State as s on h.StateId=s.StateId";
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
        Bind_Grid1();
        GridView1.PageIndex = e.NewPageIndex;
        this.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else if (!IsPostBack)
        {
            Bind_Grid1();
        }
    }
}