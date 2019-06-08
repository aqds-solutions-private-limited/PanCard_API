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
    public partial class Load_wallet : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {

                dt.Columns.AddRange(new DataColumn[3] 
                {
                    new DataColumn("Id", typeof(int)),
                    new DataColumn("Name", typeof(string)),
                    new DataColumn("Description",typeof(string)) });
                dt.Rows.Add(1, "Twinkle", "Works as a scientist in USA.");
                dt.Rows.Add(2, "Priyanka", "ASP.Net programmer and consultant in India.");

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
        }

    }
}