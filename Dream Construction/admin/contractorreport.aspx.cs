using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Dream_Construction.admin
{
    public partial class contractorreport : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbl_contractor", GridView1);
            }
        }
        public void CreateExcelFile(DataTable Excel)
        {
            Response.ClearContent();
            Response.AddHeader("content-disposition", string.Format("attachment; filename=ContractorReport.xlsx"));
            Response.ContentType = "application/vnd,ms-excel";
            string space = "";
            foreach (DataColumn dcolumn in Excel.Columns)
            {
                Response.Write(space + dcolumn.ColumnName);
                space = "\t";
            }
            Response.Write("\n");
            int countcolumn;
            foreach (DataRow dr in Excel.Rows)
            {
                space = "";
                for (countcolumn = 0; countcolumn < Excel.Columns.Count; countcolumn++)
                {
                    Response.Write(space + dr[countcolumn].ToString());
                    space = "\t";
                }
                Response.Write("\n");
            }
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select contractorname,housename,contactno,experience from tbl_contractor");
            CreateExcelFile(dt);
        }
    }
}