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
    public partial class Site2 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4NFLJ61\\SQLEXPRESS;Initial Catalog=API_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

       string log_id;

       protected void Page_Load(object sender, EventArgs e)
       {
           if (!Page.IsPostBack == true)
           {
               if (Session["username"] != null && Session["username"].ToString() != "")
               {
                   log_id = Session["Agent_id"].ToString();
                   Label1.Text = Session["username"].ToString();
                   Lbl_mem.Text = Session["member_type"].ToString();
                     Image1.ImageUrl = Session["img"].ToString();

                            
                   /////////Member Panel Visiblity &&   Pancard Menu Visiblity///////////
                   if (Session["member_type"].ToString() == "Retailer")
                   {
                       Pancard_Panel.Visible = true;
                      
                       Download_panel.Visible = true;
                       Member_Panel.Visible = false;
                       UTI.Visible = false;
                       //Dash_Panel.Visible = false;
                       Payment_panel.Visible = false;
                   }
                   else
                   {
                       Member_Panel.Visible = true;
                       Pancard_Panel.Visible = false;
                       Payment_panel.Visible = true;
                       Download_panel.Visible = false;
                       UTI.Visible = true;
                   }


                     ////////// Member / Distributor Visiblity ///////////
                   if (Session["member_type"].ToString() == "Master_Distributor")
                   {
                       Panel_dist.Visible = true;
                       Payment_panel.Visible = true;
                   }
                   else
                   {
                       Panel_dist.Visible = false;
                       Payment_panel.Visible = false;
                   }

               }

               else
               {
                   Response.Redirect("Agent_Login1.aspx");

               }

           }
       }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Agent_Login1.aspx");

        }

        //string picture1;
        //protected void Send_Click(object sender, EventArgs e)
        //{
        //    if (fileUploadp1.HasFile == true)
        //    {
        //        if (!System.IO.Directory.Exists(MapPath("~/Profile/load_wallet_slip/")))
        //        {
        //            Directory.CreateDirectory(MapPath("~/Profile/load_wallet_slip/"));
        //        }
        //        string folderPath1 = Server.MapPath("~/Profile/load_wallet_slip/");
        //        fileUploadp1.SaveAs(folderPath1 + Path.GetFileName(fileUploadp1.FileName));
        //        picture1 = "~/Profile/load_wallet_slip/" + Path.GetFileName(fileUploadp1.FileName);
        //    }


        //    if (con.State == ConnectionState.Open)
        //    {
        //        con.Close();
        //    }
        //    con.Open();


        //    cmd = new SqlCommand("load_wallet_req_pro", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@agent_id", Session["Agent_id"].ToString());
        //    cmd.Parameters.AddWithValue("@username", Label1.Text);
        //    cmd.Parameters.AddWithValue("@amount", textboxp1.Text);
        //    cmd.Parameters.AddWithValue("@date_of_payment", textboxp2.Text);
        //    cmd.Parameters.AddWithValue("@payment_mode", DropDownListp1.Text);
        //    cmd.Parameters.AddWithValue("@to_bank", DropDownListp2.Text); 
        //    cmd.Parameters.AddWithValue("bank_reference", textboxp3.Text);
        //    cmd.Parameters.AddWithValue("@slip", picture1);
        //    cmd.Parameters.AddWithValue("@remarks", textboxp4.Text);

        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'You are registered successfully!', 'success');", true);

          

        //}

        //protected void Close_Click(object sender, EventArgs e)
        //{
        //    Panel1.Visible = false;
        //}
    }
}
