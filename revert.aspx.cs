using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PenCardApi_Solutions
{
    public partial class revert : System.Web.UI.Page
    {
        string id;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
       
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Agent id"].ToString();
            if (!Page.IsPostBack)
            {
                getdata();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel_otp.Visible = true;


        }

        public void getdata()
        {

            dt.Clear();
            dt.Rows.Clear();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from add_member where mobile_no='" + id + "'", con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                //  Label1.Text = dt.Rows[0]["Current Balance"].ToString();
                Label2.Text = dt.Rows[0]["Name"].ToString();
                Label3.Text = dt.Rows[0]["address"].ToString();
                Label5.Text = dt.Rows[0]["mobile_no"].ToString();
                Label6.Text = dt.Rows[0]["Email"].ToString();
                //Label7.Text = dt.Rows[0]["Add Amount"].ToString();
                //Label8.Text = dt.Rows[0]["Remark"].ToString();

            }

        }



        string otp_num;
        public void getdata_Login()
        {
            try
            {

                dt1.Clear();
                dt1.Rows.Clear();
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();

                SqlCommand cmd1 = new SqlCommand("select * from login_table where username='" + id + "'", con);
                SqlDataAdapter ad1 = new SqlDataAdapter(cmd1);
                ad1.Fill(dt1);
                con.Close();
                if (dt1.Rows.Count > 0)
                {
                    //  id1 = dt.Rows[0]["Id"].ToString();
                    otp_num = dt1.Rows[0]["otp"].ToString();

                }
            }
            catch (Exception e)
            { }
        }
        protected void Proceed_Click(object sender, EventArgs e)
        {
            try
            {
                getdata_Login();
                if (otp_num == TextBox3.Text)
                {

                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }

                    con.Open();
                    cmd = new SqlCommand("add_balance", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                     cmd.Parameters.AddWithValue("@Agent_id",id);
                    cmd.Parameters.AddWithValue("@username", Label5.Text);

                    cmd.Parameters.AddWithValue("@wallet", "0");
                    cmd.Parameters.AddWithValue("@revert_wallet", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@remarks", TextBox1.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'Payment is transferred successfully!', 'success');", true);

                    Panel_otp.Visible = false;
                    TextBox2.Text = "";
                    TextBox1.Text = "";
                }
                else
                {
                    Label7.Text = "Invalid OTP";
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void Close_Click(object sender, EventArgs e)
        {
            Panel_otp.Visible = false;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}
