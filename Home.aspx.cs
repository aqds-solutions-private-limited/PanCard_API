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



           // string message="";
           // SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
          
           // smtpClient.Credentials = new System.Net.NetworkCredential("ankiemittal@gmail.com", "ammaappa@@@@21122004");
           // smtpClient.UseDefaultCredentials = false;
           //// smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
           // smtpClient.EnableSsl = true;
           // MailMessage mail = new MailMessage();

           // //Setting From , To and CC
           // mail.From = new MailAddress("ankiemittal@gmail.com");
           // mail.To.Add(new MailAddress(textbox2.Text));
           // mail.CC.Add(new MailAddress(textbox3.Text));
           // mail.Body = message;
            
           // smtpClient.Send(mail);
           // this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'Your Message sent successfully!', 'success');", true);
           ////string text1 = "ankiemittal@gmail.com";
           // MailMessage mailObj = new MailMessage(textbox2.Text, text1, textbox3.Text, textbox4.Text);
           // SmtpClient SMTPServer = new SmtpClient("127.0.0.1");
           // try
           // {
           //     SMTPServer.Send(mailObj);
           //      this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Hurray!', 'Your Message sent successfully!', 'success');", true);
          

           // }
           // catch (Exception ex)
           // {
           //     label1.Text = ex.ToString();
           // }
        }

           



        
    }
}