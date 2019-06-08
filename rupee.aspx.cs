using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class rupee : System.Web.UI.Page
{

    string id;
    DataTable dt = new DataTable();
    SqlConnection con = new SqlConnection("Data Source=intel-PC\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Agent id"].ToString();
        if (!Page.IsPostBack)
        {
            getdata();
        }

    }
    public void getdata()
    {

        dt.Clear();
        dt.Rows.Clear();
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from add_member where mobile_no='" + id + "'", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            //  Label1.Text = dt.Rows[0]["Current Balance"].ToString();
            Label2.Text = dt.Rows[0]["Name"].ToString();
            Label3.Text = dt.Rows[0]["Postal_Address"].ToString();
            Label5.Text = dt.Rows[0]["mobile_no"].ToString();
           // Label6.Text = dt.Rows[0]["Email"].ToString();
            //Label7.Text = dt.Rows[0]["Add Amount"].ToString();
            //Label8.Text = dt.Rows[0]["Remark"].ToString();

        }

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}