using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace PenCardApi_Solutions
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
            string picture1, picture2;
            public void add_member()
            {
                if (fileupload1.HasFile == true)
                {
                    if (!System.IO.Directory.Exists(MapPath("~/Profile/aadhar" + textbox7.Text + "/")))
                    {
                        Directory.CreateDirectory(MapPath("~/Profile/aadhar" + textbox7.Text + "/"));
                    }
                    string folderPath1 = Server.MapPath("~/Profile/aadhar" + textbox7.Text + "/");
                    fileupload1.SaveAs(folderPath1 + Path.GetFileName(fileupload1.FileName));
                    picture1 = "~/Profile/aadhar" + textbox7.Text + "/" + Path.GetFileName(fileupload1.FileName);
                }

                if (fileupload2.HasFile == true)
                {
                    if (!System.IO.Directory.Exists(MapPath("~/Profile/pan_card" + textbox8.Text + "/")))
                    {
                        Directory.CreateDirectory(MapPath("~/Profile/pan_card" + textbox8.Text + "/"));
                    }
                    string folderPath2 = Server.MapPath("~/Profile/pan_card" + textbox8.Text + "/");
                    fileupload2.SaveAs(folderPath2 + Path.GetFileName(fileupload2.FileName));
                    picture2 = "~/Profile/pan_card" + textbox8.Text + "/" + Path.GetFileName(fileupload2.FileName);
                }
            }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
             string mobile_number = Session["username"].ToString();
            cmd = new SqlCommand("fetch_db", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", mobile_number);

        }
        DataTable dt = new DataTable();
        protected void Button2_Click(object sender, EventArgs e)
        {
            add_member();
            String Update = "Update add_member set aadhar_img='" + picture1 + "',pan_img='" + picture2 + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(Update, con);
            SqlDataAdapter add = new SqlDataAdapter(cmd);
            add.Fill(dt);
            con.Close();

        }
        DataTable dt1 = new DataTable();
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string update1 = "update add_members set name='" + textbox1.Text + "', email='" + textbox3.Text + "', state='" + DropDownList3.SelectedValue + "', city='" + textbox4.Text + "', pincode='" + textbox5.Text + "', addess='" + textbox6 + "'  where mobile_no = '" + Session["username"].ToString() + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(update1, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd1);
            ad.Fill(dt1);
            con.Close();
        }

    
    }
}