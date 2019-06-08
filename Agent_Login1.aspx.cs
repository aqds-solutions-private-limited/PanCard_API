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
    public partial class Agent_Login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

          DataTable dt = new DataTable();
      int log_count = 0;
      protected void login_Click(object sender, EventArgs e)
      {

          dt.Clear();
          dt.Rows.Clear();
          if (con.State == ConnectionState.Open)
          {
              con.Close();
          }
          con.Open();



          cmd = new SqlCommand("check_login", con);
          cmd.CommandType = CommandType.StoredProcedure;

          cmd.Parameters.AddWithValue("@username", textbox1.Text);
          cmd.Parameters.AddWithValue("@password", textbox2.Text);

          SqlDataAdapter ad = new SqlDataAdapter(cmd);
          ad.Fill(dt);
          con.Close();
          if (dt.Rows.Count > 0)
          {
              Session["Agent_id"] = dt.Rows[0]["Agent_id"].ToString();
              Session["username"] = dt.Rows[0]["username"].ToString();
              if (Convert.ToInt32(dt.Rows[0]["log_count"]) == 0)
              {
                  
                  log_count=1;

                  DataTable dt2 = new DataTable();
                  string up = "Update login_table set log_count = '" + log_count + "' where username='"+Session["username"].ToString()+"'";
                  if (con.State == ConnectionState.Open)
                  {
                      con.Close();
                  }
                  con.Open();
                  SqlCommand cmd1 = new SqlCommand(up, con);
                  cmd1.ExecuteNonQuery();
                  con.Close();

                  Response.Redirect("WebForm5.aspx");

              }
              else
              {
                  Response.Redirect("WebForm2.aspx");
              }
          }
          else
          {
              this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Invalid Username or Password', 'error');", true); 
              Response.Redirect("Agent_Login1.aspx");
             
 
          }

      }
       




    }
}