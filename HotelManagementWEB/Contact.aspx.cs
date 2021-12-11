using System;
using System.Configuration;
using System.Web.UI;
using System.Data.SqlClient;

public partial class ContactUs : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string send = "insert into tbl_Contact(Name,Email,Subject,Message) values('"+txtName.Text+"','"+txtEmail.Text+"','"+txtSubject.Text+"','"+txtMessage.Text+"')";
        SqlCommand cmd = new SqlCommand(send,con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string script = @"<script language=""javascript""> alert('Sent successfully we will contact you ASAP');
                 </script>;";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
        txtSubject.Text = null;
        txtName.Text = null;
        txtMessage.Text = null;
        txtEmail.Text = null;

   
    }
}