using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PenCardApi_Solutions
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        
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
    }
}
