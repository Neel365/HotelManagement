using System;
using System.Configuration;
using System.Data.SqlClient;


public partial class Admin_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("admin");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String login = "select * from tbl_Admin_Login where UserName='"+txtUsername.Text+"' and Password='"+txtPassword.Text+"'";
        SqlCommand cmd = new SqlCommand(login, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            con.Close();
            Session["admin"] = txtUsername.Text;
            Response.Redirect("Admin_Home.aspx");
        }
        else 
        {
            con.Close();
            lblError.Visible = true;
            lblError.Text = "Username or Password is Wrong";
        }

    }
}