using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_asp
{
    public partial class UserFeedback : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into Feedback_tab values(" + Session["userid"] + ",'" + TextBox1.Text + "',' ', 0)";
            int i = conobj.Fn_Nonquery(ins);
            if (i == 1)
            {
                Label2.Text = "Thankyou for Sharing Feedback with us";
            }
        }
    }
}