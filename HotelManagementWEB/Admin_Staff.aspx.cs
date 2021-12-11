using System;
using System.Configuration;

using System.Data.SqlClient;
public partial class Admin_Staff : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else if (!IsPostBack)
        {

        }
    }

    protected void btnAddStaff_Click(object sender, EventArgs e)
    {
        String AddStaff = "INSERT INTO tbl_Staff (Name, Phone_number, Address, Email, Username, Password) VALUES('" + txtName.Text + "','" + txtPhone.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtUsername.Text + "','" + txtPassword.Text +"')";
        SqlCommand cmd = new SqlCommand(AddStaff, con);

        con.Open();
        cmd.ExecuteNonQuery();

        Label1.Text = "New Staff added successfully";

        con.Close();

        txtName.Text = "";
        txtPhone.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtUsername.Text = "";
        txtPassword.Text = "";
    }
}