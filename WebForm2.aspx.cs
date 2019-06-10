using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PenCardApi_Solutions
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       DataTable dt = new DataTable();
   // DataTable dt1 = new DataTable();
    SqlConnection con = new SqlConnection("Data Source=intel-PC\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        //string name = Session["username"].ToString();
        //SqlCommand cmd1 = new SqlCommand("select * from add_member where mobile_no='" + name + "'", con);
        //SqlDataAdapter ad1 = new SqlDataAdapter(cmd1);
        //ad1.Fill(dt1);
        //con.Close();

        //if (dt.Rows.Count > 0)
        //{

            

                con.Open();
                if (Session["Member_Type"].ToString() == "Distributor")
                {

                    string get = "select mobile_no as [Agent id], name as [Agent Name], mobile_no as Mobile, state as State, email as [Email ID] from add_member where member_type='Retailer'";
                    SqlCommand cmd = new SqlCommand(get, con);
                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    ad.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    else
                    {


                    }
                }
                else
                    GridView1.Visible = false;
        
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    }
}
