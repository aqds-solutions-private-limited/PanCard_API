using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace PenCardApi_Solutions
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write("Hello");

        }

        string picture1, picture2;
        public void add_mem()
        {
            if (fileupload1.HasFile == true)
            {
                if (!System.IO.Directory.Exists(MapPath("~/Profile/aadhar" + textbox2.Text + "/")))
                {
                    Directory.CreateDirectory(MapPath("~/Profile/aadhar" + textbox2.Text + "/"));
                }
                string folderPath1 = Server.MapPath("~/Profile/aadhar" + textbox2.Text + "/");
                fileupload1.SaveAs(folderPath1 + Path.GetFileName(fileupload1.FileName));
                picture1 = "~/Profile/aadhar" + textbox2.Text + "/" + Path.GetFileName(fileupload1.FileName);
            }

            if (fileupload2.HasFile == true)
            {
                if (!System.IO.Directory.Exists(MapPath("~/Profile/pan_card" + textbox2.Text + "/")))
                {
                    Directory.CreateDirectory(MapPath("~/Profile/pan_card" + textbox2.Text + "/"));
                }
                string folderPath2 = Server.MapPath("~/Profile/pan_card" + textbox2.Text + "/");
                fileupload2.SaveAs(folderPath2 + Path.GetFileName(fileupload2.FileName));
                picture2 = "~/Profile/pan_card" + textbox2.Text + "/" + Path.GetFileName(fileupload2.FileName);
            }

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();


            cmd = new SqlCommand("insert_member", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_type", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("mapping_under", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@name", textbox1.Text);
            cmd.Parameters.AddWithValue("@mobile_no", textbox2.Text);
            cmd.Parameters.AddWithValue("@email", textbox3.Text);
            cmd.Parameters.AddWithValue("@state", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@city", textbox4.Text);
            cmd.Parameters.AddWithValue("@pincode", textbox5.Text);
            cmd.Parameters.AddWithValue("@address", textbox6.Text);
            cmd.Parameters.AddWithValue("@aadhar_no", textbox7.Text);
            cmd.Parameters.AddWithValue("@pancard_no", textbox8.Text);
            cmd.Parameters.AddWithValue("@aadhar_img", picture1);
            cmd.Parameters.AddWithValue("@pan_img", picture2);

            cmd.ExecuteNonQuery();
            con.Close();
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'You are registered successfully!', 'success');", true);


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            add_mem();
            add_log();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt1 = new DataTable();
            dt1.Clear();
            dt1.Rows.Clear();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            if (DropDownList1.SelectedValue == "Retailer")
            {
                string get = "SELECT [name]+' |'+ [city] as city FROM add_member where member_type ='Distributor'";
                con.Open();
                cmd = new SqlCommand(get, con);
                SqlDataAdapter ad1 = new SqlDataAdapter(cmd);
                ad1.Fill(dt1);
                con.Close();
                if (dt1.Rows.Count > 0)
                {

                    DropDownList2.DataSource = dt1;
                    DropDownList2.DataTextField = "city";
                    //DropDownList2.DataValueField = "city";

                    DropDownList2.DataBind();
                    DropDownList2.Items.Add(new ListItem("Select", "0"));
                    // DropDownList2.DataValueField = "name";
                }
                else
                {
                    DropDownList2.DataSource = "";
                    DropDownList2.DataBind();
                }
            }
            else
            {

                string get = "SELECT [name]+' |'+ [city] as city FROM add_member where member_type = 'Master_Distributor'";
                con.Open();
                cmd = new SqlCommand(get, con);
                SqlDataAdapter ad1 = new SqlDataAdapter(cmd);
                ad1.Fill(dt1);
                con.Close();
                if (dt1.Rows.Count > 0)
                {

                    DropDownList2.DataSource = dt1;
                    DropDownList2.DataTextField = "city";
                    DropDownList2.DataBind();
                    DropDownList2.Items.Add(new ListItem("Select", "0"));
                }
                else
                {
                    DropDownList2.DataSource = "";
                    DropDownList2.DataBind();
                }
            }

        }

    

        int log_count = 0;
        string log_id;
        public void add_log()
        {
            DataTable dt = new DataTable();
            dt.Clear();
            dt.Rows.Clear();

            string id_fetch = "select id from add_member order by id desc";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(id_fetch, con);
            SqlDataAdapter ad1 = new SqlDataAdapter(cmd1);
            ad1.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                 log_id = dt.Rows[0]["id"].ToString();
            }

           
          //  Session["username"] = dt.Rows[0]["username"].ToString();
            pswd_generate();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            cmd = new SqlCommand("add_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", textbox2.Text);
            cmd.Parameters.AddWithValue("@password", passwordString);
            cmd.Parameters.AddWithValue("@log_count", log_count.ToString());
            cmd.Parameters.AddWithValue("@Agent_id", log_id);
            cmd.ExecuteNonQuery();
            con.Close();
           
        }

        string passwordString = "";
        int txtPassLength = 8;
       
        public void pswd_generate()
        {

            string allowedChars = "";

            allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";

            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";

            allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?";

            char[] sep = { ',' };

            string[] arr = allowedChars.Split(sep);



            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < Convert.ToInt32(txtPassLength); i++)
            {

                temp = arr[rand.Next(0, arr.Length)];

                passwordString += temp;

            }




        }


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}