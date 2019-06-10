using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;


public partial class fund_request : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=Abc-PC\\SQLEXPRESS;Initial Catalog=API-DB;Integrated Security=True;Pooling=False");
   DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        //string name = Session["username"].ToString();
        if (!this.IsPostBack)
        {
            dt.Columns.AddRange(new DataColumn[3] 
                {
                   new DataColumn("Id", typeof(int)),
                   new DataColumn("Name", typeof(string)),
                   new DataColumn("Description",typeof(string)) });
            dt.Rows.Add(1, "Twinkle", "Works as a scientist in USA.");
            dt.Rows.Add(2, "Priyanka", "ASP.Net programmer and consultant in India.");

        }


        con.Open();
        string get = "select Agent_id as id, [date_of_payment]+' |'+[payment_mode]+' |'+[bank_reference]+' |'+[slip] as pd, amount as amount, remarks as status from load_wallet_requ";
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



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}