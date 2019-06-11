using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Web;
using System.Net;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string to = textbox2.Text;
            string from = "bunty2dashy@gmail.com";
            string subject = textbox3.Text;
            string body = textbox4.Text;

            using (MailMessage mm = new MailMessage("bunty2dashy@gmail.com", textbox2.Text))
            {
                mm.Subject = textbox3.Text;
                mm.Body = textbox4.Text;
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("bunty2dashy@gmail.com", "tkgdyhfkzvumkvca");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }



        }

           



        
    }
}
