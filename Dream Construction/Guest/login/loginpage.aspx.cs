using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Dream_Construction.Guest.login
{
    public partial class loginpage : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable dt = db.exedatatable("select * from tbl_login where username='" + TextBox2.Text + "' and password= '" + TextBox1.Text + "'"  );
            if(dt.Rows.Count==1)
            {
                Session["loginid"] = dt.Rows[0]["loginid"].ToString();
                Session["username"] = dt.Rows[0]["username"].ToString();

                if (dt.Rows[0]["role"].ToString()=="Admin")
                {
                    Response.Redirect("../../Admin/adminhome.aspx");
                }
                if (dt.Rows[0]["role"].ToString() == "customer")
                {
                    Response.Redirect("../../customer/customerhome.aspx");
                }
                if (dt.Rows[0]["role"].ToString() == "contractor")
                {
                    Response.Redirect("../../contractor/contractorhome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Username and Password!!')</script>");
            }

        }
    }
}