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
    public partial class Payment : System.Web.UI.Page
    {
        Concls conobj = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select sum(Grand_total)  from Bill_tab where User_id=" + Session["userid"] + "and Current_status='Ordered'";
                Session["total"] = conobj.Fn_Scalar(str);
                //string total = conobj.Fn_Scalar(str);
                Label4.Text = Session["total"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string se_acc = "select Account_no from Account_tab where User_id=" + Session["userid"] + "";
            string accnoo = conobj.Fn_Scalar(se_acc);
            int accnumm = Convert.ToInt32(accnoo);
            if (accnumm == Convert.ToInt32(TextBox1.Text))
            {
                PayBalance.ServiceClient objservice = new PayBalance.ServiceClient();
                decimal bal = objservice.Check_Balance(Convert.ToInt32(TextBox1.Text));
                decimal gt = Convert.ToDecimal(Session["total"]);


                if (bal >= gt)
                {
                    decimal newball = bal - gt;
                    string upbal_amt = "update Account_tab set Account_balance=" + newball + "  where Account_no=" + Convert.ToInt32(TextBox1.Text) + "";
                    int i = conobj.Fn_Nonquery(upbal_amt);
                    if (i == 1)
                    {
                        string strrr = "select Order_id from Order_tab where User_id=" + Session["userid"] + " and Order_status='Ordered'";
                        List<int> olist = new List<int>();
                        SqlDataReader dr = conobj.Fn_Reader(strrr);
                        while (dr.Read())
                        {
                            olist.Add(Convert.ToInt32(dr["Order_id"]));

                        }
                        foreach (int k in olist)
                        {
                            string updates = "update Order_tab set Order_status='Paid' where Order_id=" + k + "";
                            conobj.Fn_Nonquery(updates);
                        }
                        string sel = "select max(Bill_id) from Bill_tab where User_id=" + Session["userid"] + "";
                        string bi = conobj.Fn_Scalar(sel);
                        string uuu = "update Bill_tab set Current_status='Paid' where Bill_id=" + bi + "";
                        conobj.Fn_Nonquery(uuu);
                        string sss = "select Product_id from Order_tab where Order_status='Paid' and User_id=" + Session["userid"] + " ";
                        List<int> prlist = new List<int>();
                        SqlDataReader dr1 = conobj.Fn_Reader(sss);
                        while (dr1.Read())
                        {
                            prlist.Add(Convert.ToInt32(dr1["Product_id"]));
                        }
                        foreach (int j in prlist)
                        {
                            string se = "Select Product_tab.Product_stock,Order_tab.Product_quantity from Product_tab INNER JOIN Order_tab ON Product_tab.Product_id=Order_tab.Product_id where Order_tab.Product_id=" + j + "and User_id=" + Session["userid"] + "";
                            SqlDataReader dru = conobj.Fn_Reader(se);
                            decimal pt = 0;
                            decimal qt = 0;
                            while (dru.Read())
                            {
                                pt = Convert.ToDecimal(dru["Product_stock"]);
                                qt = Convert.ToDecimal(dru["Product_quantity"]);
                            }
                            decimal newst = pt - qt;
                            string newpdt = newst.ToString();
                            string up2 = "update Product_tab set Product_stock='" + newpdt + "' where Product_id=" + j + "";
                            int k = conobj.Fn_Nonquery(up2);
                            if (k == 1)
                            {
                                Label5.Text = "Successfully paid";
                                Label6.Text = "Order Placed";
                            }
                        }
                    }
                }
                else
                {
                    Label5.Text = "Insufficient Balance";
                    string seee = "select Order_id from Order_tab where User_id=" + Session["userid"] + "and Order_status='Ordered'";
                    List<int> olist = new List<int>();
                    SqlDataReader dr22 = conobj.Fn_Reader(seee);
                    while (dr22.Read())
                    {
                        olist.Add(Convert.ToInt32(dr22["Order_id"]));
                    }
                    foreach (int k in olist)
                    {
                        string up1 = "update Order_tab set Order_status='Insufficient balance' where Order_id=" + k + "";
                        conobj.Fn_Nonquery(up1);
                    }
                    string see = "select max(Bill_id) from Bill_tab where User_id=" + Session["userid"] + "";
                    string bidd = conobj.Fn_Scalar(see);
                    string upoo = "update Bill_tab set Current_status='Failed' where Bill_id=" + bidd + "";
                    conobj.Fn_Nonquery(upoo);
                }
            }
            else
            {
                Response.Redirect("CreateAccount.aspx");
            }
        }
    }     
}