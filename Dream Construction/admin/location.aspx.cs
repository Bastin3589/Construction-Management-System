 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.admin
{
      
    public partial class location : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                db.fillddl("select * from tbl_district", DropDownList1, "districct", "distid");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(location) from tbl_location where location='" + txtloc.Text + "'");
            if(Convert.ToInt32(ob)==0)
            {
                string s = "insert into tbl_location values('" + DropDownList1.SelectedValue + "','" + txtloc.Text + "')";
                int i = db.exenonquery(s);
                    if(i==1)
                {
                    Response.Write("<script>alert('Location Inserted Successfully!')</script>");
                }
                    else
                {
                    Response.Write("<script>alert('Location Insertion Failed!')</script>");
                }

            }

        }
    }
}