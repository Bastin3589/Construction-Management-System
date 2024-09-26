using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Dream_Construction.admin
{
    public partial class distview : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                db.fillgrid("select * from tbl_district", GridView1);
            }

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;
            foreach (GridViewRow dr in GridView1.Rows)


            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                    {
                    db.exenonquery("delete from tbl_district where distid=" + chk.Value + "");
                }
                db.fillgrid("select * from tbl_district", GridView1); 
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbl_district", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtdistrict = new TextBox();
            txtdistrict = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            int i = db.exenonquery("update tbl_district set districct='" + txtdistrict.Text + "' where distid= '" + id + "'");
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_district", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_district", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbl_district where distid= " + id + "");
            db.fillgrid("select * from tbl_district", GridView1);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbl_district", GridView1);
        }
    }
}