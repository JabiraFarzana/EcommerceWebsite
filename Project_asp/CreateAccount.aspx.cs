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
    public partial class CreateAccount : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            string bal = "select Account_balance from Account_tab where User_id=" + Session["userid"] + "";
            string j = conobj.Fn_Scalar(bal);
            Label13.Text = j;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string bal = "select Account_balance from Account_tab where User_id=" + Session["userid"] + "";
            string j = conobj.Fn_Scalar(bal);
            decimal ball = Convert.ToDecimal(j);
            decimal newbal = ball + Convert.ToDecimal(TextBox5.Text);
            string up = "update Account_tab set Account_balance=" + newbal + "where User_id=" + Session["userid"] + "";
            int i = conobj.Fn_Nonquery(up);
            if (i == 1)
            {
                Label11.Text = "Updated Successfully";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_accdetails";
            cmd.Parameters.AddWithValue("@uid", Session["userid"]);
            cmd.Parameters.AddWithValue("@accna", TextBox1.Text);
            cmd.Parameters.AddWithValue("@accno", TextBox2.Text);
            cmd.Parameters.AddWithValue("@acctype", TextBox3.Text);
            cmd.Parameters.AddWithValue("@accbal", TextBox4.Text);
            cmd.Parameters.AddWithValue("@status", "Active");
            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@sta";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            conobj.Fn_Nonquery(cmd);
            int i = Convert.ToInt32(sp.Value);
            if (i == 1)
            {
                Response.Redirect("Payment.aspx");
            }
            else
            {
                Label6.Text = "Invalid Credentials";
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            string sel = "select count(Account_no) from Account_tab where Account_no=" + TextBox2.Text + "";
            string i = conobj.Fn_Scalar(sel);
            int j = Convert.ToInt32(1);
            if (j >= 1)
            {
                Label7.Text = "Account Number already exist please update wallet";
            }
        }
    }
}