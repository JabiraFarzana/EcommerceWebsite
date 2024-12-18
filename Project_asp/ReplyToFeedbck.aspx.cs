using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Text;

namespace Project_asp
{
    public partial class ReplyToFeedbck : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string m = "select User_email from User_reg where User_id=" + Session["getid"] + "";
            string s = conobj.Fn_Scalar(m);
            Session["email"] = s;
            TextBox1.Text = s;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to = TextBox1.Text;
            string sub = TextBox2.Text;
            string rep = TextBox3.Text;
            SendEmail2("Jabira Farzana", "homedecappln826@gmail.com", "huqa ltps epue spav", "to user", to, sub, rep);
            string up = "Update Feedback_tab set Reply_message='" + TextBox3.Text + "',Feedback_status=1 where User_id=" + Session["getid"] + "";
            int f = conobj.Fn_Nonquery(up);
            if (f == 1)
            {
                Label1.Text = "Successfully sent your message to the customer";
            }
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                 client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}