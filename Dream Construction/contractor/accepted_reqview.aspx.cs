using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.contractor
{
    public partial class accepted_reqview : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbl_request r inner join tbl_customer c on r.customerid=c.loginid inner join tbl_category ca on r.categoryid=ca.categoryid where r.contractorid=" + Session["loginid"] + " and  status='Accepted' or status='paymentcompleted'", GridView1);
            }
        }
    }
}