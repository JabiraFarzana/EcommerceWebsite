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
    public partial class UserHomepg : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select * from Categories_tab";
                DataSet ds = obj.Fn_DataSet(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["cid"] = getid;
            Response.Redirect("UserProducts.aspx"); 
        }
    }
}