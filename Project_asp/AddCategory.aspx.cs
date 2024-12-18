using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_asp
{
    public partial class AddCategory : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Catimage/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string ins = "insert into Categories_tab values('" + TextBox1.Text + "','" + p + "'," +
                "'" + TextBox2.Text + "','Available')";
            int i = obj.Fn_Nonquery(ins);
            Label7.Text = "Successfully Inserted";
        }

    }
}