using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.admin
{
    public partial class district : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
       

        protected void submit_Click1(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(districct) from tbl_district where districct= '" + TextBox1.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {
                string sql = "insert into tbl_district values ( '" + TextBox1.Text + "' )";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script> alert('District Inserted Successfully!')</script>");
                }
                else
                {
                    Response.Write("<script> alert('District Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script> alert('Duplicate Exists!')</script>");
            }
        }

      
    }
}