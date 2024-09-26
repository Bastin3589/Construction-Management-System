using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class changepassword : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpwd_Click(object sender, EventArgs e)
        {
            int i = db.exenonquery("update tbl_login set password='" + txt_pwd.Text + "' where loginid='" + Session["loginid"] + "'");

            db.Dbclose();
            if (i == 1)
            {
                Response.Write("<script>alert('success..!  Awaiting for Ack...')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed..!'</script>");
            }

        }
    }
}