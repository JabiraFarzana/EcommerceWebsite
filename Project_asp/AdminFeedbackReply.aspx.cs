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
    public partial class AdminFeedbackReply : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }

        public void gridbind()
        {
            string g = "select User_reg.*, Feedback_tab.* from User_reg inner join Feedback_tab on User_reg.User_id=Feedback_tab.User_id where Feedback_tab.Feedback_status=0";
            DataSet ds = conobj.Fn_DataSet(g);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Session["getid"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("ReplyToFeedbck.aspx");
        }
    }
}