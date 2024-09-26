using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.contractor
{
    public partial class houseplan : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("select * from tbl_category", DropDownList1, "categoryname", "categoryid");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {

            string sql = "insert into tbl_house values ('" + FileUpload1.FileName + "',  '" + FileUpload2.FileName+ "','"+ TextBox1 .Text+ "',"+ Session["loginid"] + ","+DropDownList1.SelectedValue+")";
                FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName));
                FileUpload2.SaveAs(Server.MapPath("~/upload/" + FileUpload2.FileName));
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script> alert('House Plan Inserted Successfully!')</script>");
                }
                else
                {
                    Response.Write("<script> alert('House Plan Insertion failed!')</script>");
                }
           
        }
    }
}