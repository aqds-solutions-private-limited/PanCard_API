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
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name=  Session["username"].ToString();
            dt.Clear();
            dt.Rows.Clear();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            string get = "select * from login_table ";
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //if(textbox2.Text == textbox3.Text)
            //{
            //    Label4.ForeColor=System.Drawing.Color.Green;
            //    Label4.Text = "Password Matched!";
              
            //}
            //else
            //{
            //    Label4.ForeColor = System.Drawing.Color.Red;
            //    Label4.Text= "Password does not match.. Please Check Your Password!!";
            //}

            dt.Clear();
            dt.Rows.Clear();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            string get = "select * from login_table where username='" + Session["username"].ToString() + "' ";
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Session["username"] = dt.Rows[0]["username"].ToString();
                if (dt.Rows[0]["password"] == textbox1.Text)
                {


                    DataTable dt2 = new DataTable();
                    string up = "Update login_table set password = '" + textbox2.Text + "' where username='" + Session["username"].ToString() + "'";
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand(up, con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'You are registered successfully!', 'success');", true);
                    Response.Redirect("WebForm2.aspx");

                }
                else
                {
                    Response.Redirect("WebForm2.aspx");
                }
            }
            else
            {

                //Response.Redirect("Agent_Login1.aspx");
                //Label1.Text = "Invalid Username And Password";
            }
        }
    }
}