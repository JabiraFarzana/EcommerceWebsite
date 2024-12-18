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
    public partial class ViewCart : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind_fun();

            }
            string m = "select count(Cart_id) from Cart_tab where User_id='" + Session["userid"] + "'";
            string mx = conobj.Fn_Scalar(m);
            int mee = Convert.ToInt32(mx);
            if (mee == 0)
            {
                Label6.Text = "your cart is empty";
            }
            else
            {
                string sum = "select sum(Product_totalprice) from Cart_tab where User_id=" + Session["userid"] + "";
                string s = conobj.Fn_Scalar(sum);
                Label5.Text = s;
            }
        }
        public void gridbind_fun()
        {
            string sel = "select Product_tab.Product_id,Product_tab.Product_image,Product_tab.Product_name,Product_tab.Product_price,Cart_tab.Product_id,Cart_tab.Product_quantity,Cart_tab.Product_totalprice from Product_tab INNER JOIN Cart_tab on Product_tab.Product_id=Cart_tab.Product_id";
            DataSet ds = conobj.Fn_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridbind_fun();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select * from Cart_tab where User_id=" + Session["userid"] + "";
            List<int> lis = new List<int>();
            SqlDataReader dr = conobj.Fn_Reader(sel);
            while (dr.Read())
            {
                lis.Add(Convert.ToInt32(dr["Cart_id"]));
            }
            foreach (int i in lis)
            {
                string sel1 = "select * from Cart_tab where (Cart_id=" + i + " AND  User_id=" + Session["userid"] + ")";
                SqlDataReader dr1 = conobj.Fn_Reader(sel1);
                int pid = 0;
                decimal pq = 0;
                decimal tp = 0;
                while (dr1.Read())
                {
                    pid = Convert.ToInt32(dr1["Product_id"]);
                    pq = Convert.ToInt32(dr1["Product_quantity"]);
                    tp = Convert.ToInt32(dr1["Product_totalprice"]);
                }
                string ins1 = "insert into Order_tab values(" + pid + "," + Session["userid"] + "," + pq + "," + tp + ",'" + DateTime.Now.ToLongDateString() + "','ordered')";
                int s = conobj.Fn_Nonquery(ins1);
                string dl = "delete from Cart_tab where Product_id=" + pid + " and User_id=" + Session["userid"] + "";
                int p = conobj.Fn_Nonquery(dl);

                int c1 = Convert.ToInt32(Label5.Text);
                string ins = "insert into Bill_tab values(" + Session["userid"] + "," + c1 + ",'" + DateTime.Now.ToLongDateString() + "','Ordered')";
                conobj.Fn_Nonquery(ins);
            }
            Response.Redirect("Bill.aspx");
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridbind_fun();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string r = "select Product_price from Product_tab where Product_id=" + getid + "";
            string m = conobj.Fn_Scalar(r);
            Session["price"] = m;

            TextBox txtquantity = (TextBox)GridView1.Rows[i].Cells[5].FindControl("TextBox1");
            int c = Convert.ToInt32(txtquantity.Text) * Convert.ToInt32(Session["price"]);


            string uppt = "update Cart_tab set Product_quantity=" + txtquantity.Text + ", Product_totalprice='" + c + "' where Product_id=" + getid + "";

            conobj.Fn_Nonquery(uppt);
            GridView1.EditIndex = -1;
            gridbind_fun();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string dd = "delete from Cart_tab where Product_id=" + getid + "";
            conobj.Fn_Nonquery(dd);
            GridView1.DataBind();
        }
    }
}