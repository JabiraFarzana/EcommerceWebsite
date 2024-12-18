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
    public partial class AddProduct : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList_Bind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/proimage/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string ins = "insert into Product_tab values(" + DropDownList1.SelectedItem.Value + "," +"'" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," +"" + TextBox4.Text + ",'Available')";
            int i = obj.Fn_Nonquery(ins);
            Session["uid"] = i;
            if (i == 1)
            {
                Label1.Text = "Successfully Inserted";
            }
        }
        public void DropDownList_Bind()
        {
            string str = "select * from Categories_tab";
            DataSet ds = obj.Fn_DataSet(str);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Category_name";
            DropDownList1.DataValueField = "Category_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }
}