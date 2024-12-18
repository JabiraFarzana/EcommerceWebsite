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
    public partial class ViewUserProducts : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select * from Product_tab where Product_id=" + Session["pid"] + "";
            SqlDataReader dr = obj.Fn_Reader(str);
            while (dr.Read())
            {
                Image1.ImageUrl = dr["Product_image"].ToString();
                Label1.Text = dr["Product_name"].ToString();
                Label2.Text = dr["Product_price"].ToString();
                Label3.Text = dr["Product_description"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string c = "select Max(Cart_id) from Cart_tab";
            string crtid = obj.Fn_Scalar(c);
            int cartid = 0;
            if (crtid == "")
            {
                cartid = 1;
            }
            else
            {
                int newcid = Convert.ToInt32(crtid);
                cartid = newcid + 1;
            }
            int TotalPrice = Convert.ToInt32(DropDownList1.SelectedItem.Text) * Convert.ToInt32(Label2.Text);

            string ct = "insert into Cart_tab values(" + cartid + "," + Session["userid"] + "," + Session["pid"] + ",'" + DropDownList1.SelectedItem.Text + "'," + TotalPrice + ",'" + DateTime.Now.ToLongDateString() + "')";
            int crt = obj.Fn_Nonquery(ct);
            if (crt == 1)
            {
                Label7.Text = "Added to Cart";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = Convert.ToInt32(DropDownList1.SelectedItem.Text) * Convert.ToInt32(Label2.Text);
            Label6.Text = t.ToString();
        }
    }
}