using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class housemodels : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string catid = Request.QueryString["catid"].ToString();
            db.filllistview("select *  from tbl_category c inner join tbl_house h  on c.categoryid=h.categoryid inner join tbl_contractor k on k.loginid=h.contractorid where h.categoryid="+ catid + "", ListView1);
            //if (i == 1)
            //{
            //    Response.Write("<script>alert('officer Inserted Successfully!')</script>");
            //    //Response.Redirect("../Guest/login/loginpage.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('officer Inserted Successfully!')</script>");
            //    //Response.Redirect("../Guest/login/loginpage.aspx");


            //}
        }
    }
}