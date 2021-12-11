using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AddRooms : System.Web.UI.Page
{
    int HotelId;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);
    protected void BindRoomType()
    {
        string cat = "Select * from tbl_Room_Type";
        SqlCommand cmd = new SqlCommand(cat, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();
        ddlRoom.DataSource = ds;
        ddlRoom.DataTextField = "RoomTypeName";
        ddlRoom.DataValueField = "RoomTypeId";
        ddlRoom.DataBind();
        ddlRoom.Items.Insert(0, new ListItem("--- Select Room Type---", "-1"));


    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQueryString = Request.QueryString.ToString();
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else if (strQueryString.Contains("Name1"))
        {

            if (!IsPostBack)
            {
                BindRoomType();

            }
            HotelId = Convert.ToInt32(Request.QueryString["Name1"].ToString());

        }
        else
        {
            Response.Redirect("Admin_AddHotel.aspx");
        }
        

    }
   
   
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String AddHotel = "INSERT INTO tbl_Room (RoomTypeId, HotelId, RoomPrice) VALUES('" + ddlRoom.SelectedValue + "','" + HotelId + "','" + txtPrice.Text + "')";
        SqlCommand cmd = new SqlCommand(AddHotel, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Label1.Text = "Room added successfully";
        txtPrice.Text = null;
        
    }
    protected void btnImgAdd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile != null)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
            String AddHotel = "INSERT INTO tbl_Image (HotelId,ImageName,ImagePath) VALUES('" + HotelId + "','" + txtName.Text + "',' ~/images/" + FileUpload1.FileName + "')";
            SqlCommand cmd = new SqlCommand(AddHotel, con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Label2.Text = "Image added successfully";
            txtName.Text = null;
        }
    }
    protected void btnBack2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_AddHotel.aspx");
    }
    protected void BbtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_AddHotel.aspx");
    }
}