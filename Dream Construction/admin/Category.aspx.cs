using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction
{
    public partial class Category : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(categoryname) from tbl_category where categoryname= '" + category.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {
                string sql = "insert into tbl_category values ( '" + category.Text + "' ,'" +FileUpload1.FileName + "')";
                FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName));
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script> alert('Category Inserted Successfully!')</script>");
                }
                else
                {
                    Response.Write("<script> alert('Category Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script> alert('Duplicate Exists!')</script>");
            }
        }
    }
}