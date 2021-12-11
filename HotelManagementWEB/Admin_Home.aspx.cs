using System;

public partial class  _AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }
}