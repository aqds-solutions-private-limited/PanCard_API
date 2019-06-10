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
    public partial class retailer : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {

                dt.Columns.AddRange(new DataColumn[3] 
                {
                   // new DataColumn("Id", typeof(int)),
                   // new DataColumn("Name", typeof(string)),
                  //  new DataColumn("Description",typeof(string)) });
               // dt.Rows.Add(1, "Twinkle", "Works as a scientist in USA.");
                //dt.Rows.Add(2, "Priyanka", "ASP.Net programmer and consultant in India.");

                //GridView1.DataSource = dt;
                //GridView1.DataBind();
            }
            
            
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            cmd = new SqlCommand("ftch_byMemberType", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_type", "Retailer");



            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            { }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
