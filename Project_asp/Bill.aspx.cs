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
    public partial class Bill : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string se = "select sum(Grand_total) from Bill_tab where User_id= " + Session["userid"] + "and Current_status='Ordered'";
                Label7.Text = conobj.Fn_Scalar(se);
                string s = "select Bill_id, Bill_date from Bill_tab where User_id=" + Session["userid"] + " and Current_status='Ordered'";
                SqlDataReader dr = conobj.Fn_Reader(s);
                while (dr.Read())
                {
                    Label3.Text = dr["Bill_id"].ToString();
                    Label6.Text = dr["Bill_date"].ToString();
                }
                gridbind_fun();
            }

        }
        public void gridbind_fun()
        {
            string f = "select Product_tab.Product_name,Order_tab.Product_quantity,Order_tab.Product_totalprice from Order_tab INNER JOIN Product_tab ON Order_tab.Product_id= Product_tab.Product_id and User_id=" + Session["userid"] + "";
            DataSet ds = conobj.Fn_DataSet(f);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAccount.aspx");
        }
    }
}