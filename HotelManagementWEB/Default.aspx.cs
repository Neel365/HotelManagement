using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;  

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

    protected void BindState()
    {
        string cat = "Select Distinct s.StateName, h.StateId from tbl_Hotel as h join tbl_State as s on h.StateId=s.StateId";
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
        ddlState.Items.Insert(0, new ListItem("--- Select State---", "-1"));

    }
    protected void BindCity()
    {
        string cat = "Select Distinct c.CityName, h.CityId from tbl_Hotel as h join tbl_City as c on h.CityId=c.CityId where h.StateId='" + Convert.ToInt32((ddlState.SelectedValue).ToString()) + "'";
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
        ddlCity.Items.Insert(0, new ListItem("--- Select City---", "-1"));

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        { BindState(); }
       
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?Name1=" +ddlState.SelectedValue + "&Name2=" + ddlCity.SelectedValue);
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity();
    }
}