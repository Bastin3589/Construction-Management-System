using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Dream_Construction.payment
{
    public partial class second : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = db.exedatatable("select * from tbl_request where customerid='" + Session["loginid"]+"' ");
                Session["budget"] = dt.Rows[0]["custbudget"].ToString();

                lblCardNumber.Text = Session["acno"].ToString();
                lbl_Payto.Text = "Santhisoft";
                lbl_Amount.Text = Session["budget"].ToString();
            }
            
        }

        protected void lblCopyIt_Click(object sender, EventArgs e)
        {
            //string sel = "select * from tbl_customer where loginid='" + Session["loginid"] + "'";
            //DataTable dt = db.exedatatable(sel);
            //if (dt.Rows.Count == 1)
            //{
            //    txtName.Text = dt.Rows[0]["name"].ToString();
            //    txtAddress.Text = con.rdr.GetValue(1).ToString();
            //    txtPlace.Text = con.rdr.GetValue(2).ToString();
            //    txtState.Text = con.rdr.GetValue(5).ToString();
            //    txtEmail.Text = con.rdr.GetValue(3).ToString();
            //    txtPhone.Text = con.rdr.GetValue(4).ToString();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("third.aspx");
        }
    }
}