using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddHotel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);
    int HotelId;
    protected void BindState()
    {
        string cat = "Select * from tbl_State";
        SqlCommand cmd = new SqlCommand(cat, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();
        ddlState.DataSource = ds;
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateId";
        ddlState.DataBind();

    }

    protected void BindCity()
    {
        string cat = "Select * from tbl_City where StateId='"+ddlState.SelectedValue+"'";
        SqlCommand cmd = new SqlCommand(cat, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        con.Open();
        adp.Fill(ds);
        con.Close();
        ddlCity.DataSource = ds;
        ddlCity.DataTextField = "CityName";
        ddlCity.DataValueField = "CityId";
        ddlCity.DataBind();

    }


    protected void getId()
    {
        string id = "select HotelId from tbl_Hotel where HotelName='"+txtName.Text+"' and Email='"+txtEmail.Text+"' and Phone='"+txtPhone.Text+"' ";
        SqlCommand cmdId = new SqlCommand(id, con);
        
        SqlDataReader drId = cmdId.ExecuteReader();
        while (drId.Read())
        {
            HotelId = Convert.ToInt32(drId[0].ToString());
            
        }
    }
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else if (!IsPostBack) 
        {
            BindState();
        }
    }
   
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity();
    }
    protected void btnAddHotel_Click(object sender, EventArgs e)
    {

        
        //try
        //{
            if (img.PostedFile != null)
            {
               // img.SaveAs(Server.MapPath("~/images/" + img.FileName));

                String AddHotel = "INSERT INTO tbl_Hotel (HotelName, Email, Phone, Address1, Address2, CityId, StateId, Country, Star,Description,ImagePath,Price,AirPort,RailwayStation,LandMark) VALUES('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtAddress1.Text + "','" + txtAddress2.Text + "','" + Convert.ToInt32(ddlCity.SelectedValue) + "','" + Convert.ToInt32(ddlState.SelectedValue) + "','" + ddlCountry.SelectedItem + "','" + ddlStar.SelectedItem + "','" + txtDescription.Text + "','~/images/" + img.FileName + "','" + Convert.ToInt32(txtPrice.Text) + "','" +  Convert.ToInt32(txtAirport.Text) + "','" +  Convert.ToInt32(txtRailStation.Text) + "','" + txtLandMark.Text + "')";
            SqlCommand cmd = new SqlCommand(AddHotel, con);

            con.Open();
            cmd.ExecuteNonQuery();
            
            Label1.Text = "New hotel added successfully";
            
            getId();
            con.Close();
            txtName.Text = null;
            txtEmail.Text = null;
            txtPhone.Text = null;
            txtAddress1.Text = null;
            txtAddress2.Text = null;
            txtDescription.Text = null;


            Response.Redirect("Admin_AddRooms.aspx?Name1="+HotelId);
                }
            
        //}
        //catch (Exception ex)
        //{ Label1.Visible = true;
        ////Label1.Text = ex;
        //}
       
   
    }
}