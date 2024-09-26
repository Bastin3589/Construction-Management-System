using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Dream_Construction.admin
{
    public partial class locview : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                db.fillddl("select * from tbl_district", ddldistrict, "districct", "distid");
                db.fillgrid("select * from tbl_location", GridView1);
            }
        }

      

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {             DropDownList ddldistrict1 = (e.Row.FindControl("DropDownList1") as DropDownList);
            db.fillddl("select * from tbl_district", ddldistrict1, "districct", "distid");

            ((DropDownList)e.Row.FindControl("DropDownList1")).SelectedValue =
                DataBinder.Eval(e.Row.DataItem, "distid").ToString();
            }
        }


        protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillgrid("select * from tbl_location where distid=" + ddldistrict.SelectedValue + "", GridView1);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbl_location where distid=" + ddldistrict.SelectedValue + "", GridView1);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtloc = new TextBox();
            txtloc = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            int distid = Convert.ToInt32(((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedValue);
            db.exenonquery("update tbl_location set distid=" + distid + ",location='" + txtloc.Text + "'  where locationid=" + id + "");
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_location", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbl_location where locationid=" + id + "");
            db.fillgrid("select * from tbl_location", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_location", GridView1);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbl_location", GridView1);
        }
    }
}