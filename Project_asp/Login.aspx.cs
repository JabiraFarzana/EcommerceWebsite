using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_asp
{
    public partial class Childpg : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_id) from User_login where User_name='" + TextBox1.Text + "' and User_password='" + TextBox2.Text + "'";
            string cid = obj.Fn_Scalar(str);
            if (cid == "1")
            {
                string str1 = "select Reg_id from User_login where User_name='" + TextBox1.Text + "' and User_password='" + TextBox2.Text + "'";
                string regid = obj.Fn_Scalar(str1);
                Session["userid"] = regid;
                string str2 = "select Log_type from User_login where User_name='" + TextBox1.Text + "' and User_password='" + TextBox2.Text + "'";
                string logtype = obj.Fn_Scalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("AdminHomepg.aspx");
                }
                else if (logtype == "user")
                {
                    Response.Redirect("UserHomepg.aspx");
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid Username and Password";
            }
            
        }
    }
}