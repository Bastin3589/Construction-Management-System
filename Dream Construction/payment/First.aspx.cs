using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Dream_Construction.payment
{
    public partial class First : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select acno,cvv,acbalance from tbl_paymentbank where busername='" + Session["username"].ToString() + "' and acno='" +TextBox1.Text + "' and cvv='" + TextBox2.Text + "'";

            DataTable dt = db.exedatatable(s);
            if (dt.Rows.Count == 1)
            {

                if (CheckBox1.Checked == true)
                {
                    Session["acno"] = TextBox1.Text;
                    Session["balamount"] = dt.Rows[0]["acbalance"].ToString();
                    Response.Redirect("second.aspx");

                }
                else
                {
                    Label1.Text = "Please accept the Terms & Conditions";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label1.Text = "wrong account number or confirmation pin";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}