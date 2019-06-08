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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd;
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

               // dt.Columns.AddRange(new DataColumn[3] 
               // {
                  //  new DataColumn("Id", typeof(int)),
                  //  new DataColumn("Name", typeof(string)),
                   // new DataColumn("Description",typeof(string))
               ///// });
               // dt.Rows.Add(1, "Twinkle", "Works as a scientist in USA.");
               // dt.Rows.Add(2, "Priyanka", "ASP.Net programmer and consultant in India.");
            }
            con.Open();
            string get = "select id as id, [name]+' |'+[city]+' |'+[member_type] as pd from add_member";
            cmd = new SqlCommand(get,con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {}
                // DetailsView detailview1 = GridView1.Rows[0].FindControl("DetailsView1") as DetailsView;

                //detailview1.DataSource = dt;

                //detailview1.DataBind();

            }


           // string name = Session["username"].ToString();

        }
}