using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.contractor
{
    public partial class contractormaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void page_init(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Guest/login/loginpage.aspx");
            }
            Response.Cache.SetNoStore();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Guest/login/loginpage.aspx");
        }
    }
}