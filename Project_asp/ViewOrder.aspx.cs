using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_asp
{
    public partial class ViewOrder : System.Web.UI.Page
    {
        Concls conobj = new Concls(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        public void gridbind()
        {
            string sel = "Select User_reg.User_name,Current_status  from User_reg join Bill_tab  on User_reg.User_id=Bill_tab.User_id  where Current_status='Paid'";
            DataSet ds = conobj.Fn_DataSet(sel);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "Update Bill_tab set Current_status='Delivered' where Current_status='Paid'";
            conobj.Fn_Nonquery(sel);
            Label1.Text = "Updated Successfully!";
            gridbind();
        }
    }
}