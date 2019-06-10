using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace PenCardApi_Solutions
{
    public partial class WebForm5 : System.Web.UI.Page
{     string pass ;
    SqlConnection con = new SqlConnection("Data Source=intel-PC\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        string name = Session["username"].ToString();

        dt.Clear();
        dt.Rows.Clear();
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        string get = "select * from login_table where username = '" + Session["username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(get, con);
        SqlDataAdapter ad1 = new SqlDataAdapter(cmd);
        ad1.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            pass = dt.Rows[0]["password"].ToString();
        }
        else
        {
            Response.Write("not found");
        }


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
    //    if (textbox2.Text == textbox3.Text)
    //    {
    //        Label4.ForeColor = System.Drawing.Color.Green;
    //        Label4.Text = "Password Matched!";

    //    }
    //    else
    //    {
    //        Label4.ForeColor = System.Drawing.Color.Red;
    //        Label4.Text = "Password does not match.. Please Check Your Password!!";
    //    }


        

         if(pass == textbox1.Text)
         {
             
        
         string update1 = "update login_table set password='"+textbox3.Text+"'  where username = '" + Session["username"].ToString() + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(update1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
         }
        else
         {  
           //  this.ClientScript.RegisterStartupScript(this.GetType, "Sweetalert", "swal('Opps!', 'Password doesnot match!', 'error');", true);
        }

    }
   
   
   
}


}
