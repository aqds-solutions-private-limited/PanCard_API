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
    {  SqlConnection con = new SqlConnection("Data Source=intel-PC\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    string picture1, picture2;
    public void update_member()
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
    string mobile_number;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        if (Session["username"] != null)
        mobile_number = Session["username"].ToString();
       

    }
    DataTable dt = new DataTable();
    protected void Update_Click(object sender, EventArgs e)
    {
        update_member();
        String Up = "Update add_member set aadhar_img='" + picture1 + "',pan_img='" + picture2 + "',aadhar_no='"+textbox7.Text+"', pancard_no='"+textbox8.Text+"' where  mobile_no = '" + mobile_number + "'";
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        
        con.Open();
        SqlCommand cmd = new SqlCommand(Up, con);
        cmd.ExecuteNonQuery();
        con.Close();
       // Response.Redirect("WebForm6.aspx");

    }
    DataTable dt1 = new DataTable();
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
            string update1 = "update add_member set name='" + textbox1.Text + "', email='" + textbox3.Text + "', state='" + DropDownList3.SelectedValue + "', city='" + textbox4.Text + "', pincode='" + textbox5.Text + "', address='" + textbox6 + "'  where mobile_no = '" + mobile_number + "'";
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd1 = new SqlCommand(update1, con);
            cmd1.ExecuteNonQuery();

            con.Close();
            Response.Redirect("WebForm5.aspx");

       
    }

    
    }
}
