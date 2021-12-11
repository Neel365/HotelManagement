using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AddCity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HotelConnString"].ConnectionString);

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

    int check(string sql)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        int ans = 0;
        while (dr.Read())
        {

            ans++;
        }
        con.Close();
        return ans;



    }
    public void Bind_Grid1()
    {
        string sql = "SELECT c.CityId, c.CityName,s.StateName FROM tbl_City as c join tbl_State as s on c.StateId=s.StateId";
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        else 
        {
            if (!IsPostBack)
            {
                BindState();
            }
            Bind_Grid1();
        }
    }

    protected void GridView1_IndexChanging(object sender, GridViewPageEventArgs e)
    {
       
        GridView1.PageIndex = e.NewPageIndex;
        this.DataBind();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int temp = 0;
        try
        {
            temp = check("select * from tbl_City where CityName='" + txtCity.Text + "' and StateId='"+ddlState.SelectedValue+"'");
            if (temp > 0)
            {

                Label1.Text = "Category Name Already Used";
                txtCity.Text = null;
                txtCity.Focus();
            }
            else
            {

                String AddCity = "INSERT INTO tbl_City (CityName, StateId) VALUES('" + txtCity.Text + "','" + ddlState.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(AddCity, con);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "New City added successfully";
                txtCity.Text = null;
                txtCity.Focus();
            }
        }
        catch(Exception ex)
        {
            Label1.Visible = true;
        Label1.Text = "Try Again"+ ex; 
        }
    }

}