using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class viewmorecust : System.Web.UI.Page
    { 
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string catid = Request.QueryString["catid"].ToString();
            Session["catogoryid"] = catid;
            string contactid = Request.QueryString["contactid"].ToString();
            Session["contactid"] = contactid;
            if (!IsPostBack)
            {
                db.filllistview("select * from tbl_house where categoryid=" + catid + "", ListView1);

            }

        }
    }
}