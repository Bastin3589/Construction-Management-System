using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class customerreqview : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbl_request r inner join tbl_contractor c on r.contractorid=c.loginid inner join tbl_category y on y.categoryid=r.categoryid where r.status='Accepted' or r.status='rejected' ", GridView1);
            }
        }

   

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string databaseValue = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                if (databaseValue == "Accepted")
                {
                    Button btnAction = (Button)e.Row.FindControl("Button1");
                    btnAction.Enabled = true;
                    string r = btnAction.CommandArgument;
                    Session["requestid"] = r;
                    // Response.Redirect("../payment/First.aspx");
                }
                else
                {
                    Button btnAction = (Button)e.Row.FindControl("Button1");
                    btnAction.Enabled = false;
                }
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
             {
            Response.Redirect("../payment/First.aspx?rid=" + Session["requestid"] + "");

            }

    }
}