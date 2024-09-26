using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction
{
    public partial class categoryview : System.Web.UI.Page
    {

        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbl_category", GridView1);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)   
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbl_category", GridView1);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbl_category", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtcategory = new TextBox();
            txtcategory = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            FileUpload f = new FileUpload();
            f = (FileUpload)GridView1.Rows[e.RowIndex].Cells[3].FindControl("FileUpload1");
             if(f.HasFile)
            {
                int j = db.exenonquery("update tbl_category set categoryname='" + txtcategory.Text + "',image='" + f.FileName + "' where categoryid='" + id + "'");
                f.SaveAs(Server.MapPath("~/upload/" + f.FileName));
            }
            else
            {
                int j = db.exenonquery("update tblcategory set categoryname='" + txtcategory.Text + "' where categoryid='" + id + "'");
            }
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_category", GridView1);


            int i = db.exenonquery("update tbl_category set categoryname='" + txtcategory.Text + "' where categoryid= '" + id + "'");
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_category", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_category", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbl_category where categoryid= " + id + "");
            db.fillgrid("select * from tbl_category", GridView1);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}