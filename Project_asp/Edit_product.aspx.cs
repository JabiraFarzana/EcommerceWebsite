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
    public partial class Edit_product : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            Gridview_Bind();
            DropDownList_Bind();
        }
        public void Gridview_Bind()
        {
            string str = "select * from Product_tab";
            DataSet ds = obj.Fn_DataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public void DropDownList_Bind()
        {
            string str = "select * from Categories_tab";
            DataSet ds = obj.Fn_DataSet(str);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Category_name";
            DropDownList1.DataValueField = "Category_id";
            DropDownList1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["pid"] = getid;
            string str = "select * from Product_tab where Product_id=" + getid + "";
            SqlDataReader dr = obj.Fn_Reader(str);
            while (dr.Read())
            {
                TextBox1.Text = dr["Product_name"].ToString();
                TextBox2.Text = dr["Product_image"].ToString();
                TextBox3.Text = dr["Product_price"].ToString();
                TextBox4.Text = dr["Product_description"].ToString();
                TextBox5.Text = dr["Product_stock"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p;
            if (FileUpload1.HasFile)
            {
                p = "~/proimage/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));
            }
            else
            {
                p = TextBox2.Text;
            }
            string str = "update Product_tab set Product_name='" + TextBox1.Text + "',Product_image='" + p + "',Product_price=" + TextBox3.Text + ",Product_description='" + TextBox4.Text + "',Product_stock='" + TextBox5.Text + "'where Product_id=" + Session["pid"] + "";
            int i = obj.Fn_Nonquery(str);
            if (i == 1)
            {
                Label7.Text = "Successfully updated";
            }
            else
            {
                Label7.Text = "Update Failed";
            }
        }

    }
}