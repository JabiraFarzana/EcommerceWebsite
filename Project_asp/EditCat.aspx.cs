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
    public partial class EditCat : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView_Bind();
        }
        public void GridView_Bind()
        {
            string str = "select * from Categories_tab";
            DataSet ds = obj.Fn_DataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["cid"] = getid;
            string str = "select * from Categories_tab where Category_id=" + getid + "";
            SqlDataReader dr = obj.Fn_Reader(str);
            while (dr.Read())
            {
                TextBox1.Text = dr["Category_name"].ToString();
                TextBox2.Text = dr["Category_image"].ToString();
                TextBox3.Text = dr["Category_description"].ToString();
                TextBox4.Text = dr["Category_status"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p;
            if (FileUpload1.HasFile)
            {
                p = "~/Catimage/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));
            }
            else
            {
                p = TextBox2.Text;
            }
            string str = "Update Categories_tab set Category_name='" + TextBox1.Text + "',Category_image='" + p + "',Category_description='" + TextBox3.Text + "',Category_status='Available' where Category_id=" + Session["cid"]+ "";
            int i = obj.Fn_Nonquery(str);
            if(i==1)
            {
                Label11.Text = "Successfully Updated";
            }
            else
            {
                Label11.Text = "Update Failed";
            }
        }

    }
}