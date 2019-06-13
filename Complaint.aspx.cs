using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Complaint : System.Web.UI.Page
{
  DataTable dt = new DataTable();
    SqlConnection con = new SqlConnection("Data Source=intel-PC\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
    try
    { string name = Session["agent_id"].ToString();
       
       


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("StoredProcedure5", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Agent_id", Session["agent_id"]);
        cmd.Parameters.AddWithValue("@name", textbox1.Text);
        cmd.Parameters.AddWithValue("@mobile", textbox2.Text);
        cmd.Parameters.AddWithValue("@email", textbox3.Text);
        cmd.Parameters.AddWithValue("@reason", textbox4.Text);
        cmd.Parameters.AddWithValue("@complaint", textbox5.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        string get = "select name as Name, mobile_number as Mobile, email as Email, reason as [Complaint_Reason], complaint as [Complaint] from comp_table";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(get, con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd1);
        ad.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("not valid");

        }
        

    }
}
catch(Exception ex)
{}
    }
}
