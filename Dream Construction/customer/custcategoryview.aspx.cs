using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class categoryview : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

            db.filllistview("select *  from tbl_category", ListView1);

        }


    }
}