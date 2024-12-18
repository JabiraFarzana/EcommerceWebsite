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
    public partial class Userreg : System.Web.UI.Page
    {
        Concls obj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindstate();
                binddistrict();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_Id) from User_login";
            string regid = obj.Fn_Scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string ins = "insert into User_Reg values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + "," + TextBox4.Text + ",'" + DropDownList1.SelectedItem.Text + "','" +DropDownList2.SelectedItem.Text + "','" + TextBox7.Text + "','active')";
            int i = obj.Fn_Nonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into User_login values(" + reg_id + ",'" + TextBox8.Text + "','" + TextBox9.Text + "','user')";
                int j = obj.Fn_Nonquery(inslog);
            }
            Label13.Text = "Successfully Registered";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "select * from District_tb where State_id='" + DropDownList1.SelectedItem.Value + "'";
            DataSet ds = obj.Fn_DataSet(str);
            DropDownList2.DataValueField = "District_id";
            DropDownList2.DataTextField = "District_name";
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();


        }
    public void bindstate()
    {
        string sel = "select State_Id,State_name from State_tb";
        DataSet ds = obj.Fn_DataSet(sel);
        DropDownList1.DataValueField = "State_id";
        DropDownList1.DataTextField = "State_name";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
        

    }
        public void binddistrict()
        {
            string sel = "select District_Id,District_name from District_tb where State_id='" + DropDownList1.SelectedItem.Value + "'";
            DataSet ds = obj.Fn_DataSet(sel);
            DropDownList2.DataValueField = "District_id";
            DropDownList2.DataTextField = "District_name";
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();


        }
    }
}