using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization;
using System.Data;

namespace Dream_Construction
{
    public partial class reportmostreq : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            DataTable objdatatable = db.exedatatable("select COUNT(*) as count,c.categoryname from tbl_request r inner join tbl_category c on c.categoryid=r.categoryid group by c.categoryid,c.categoryname");
            string[] x = new string[objdatatable.Rows.Count];

            int[] y = new int[objdatatable.Rows.Count];
            for (int i = 0; i < objdatatable.Rows.Count; i++)
            {
                x[i] = objdatatable.Rows[i]["categoryname"].ToString();
                y[i] = Convert.ToInt32(objdatatable.Rows[i]["count"]);
            }
            chart1.Series[0].Points.DataBindXY(x, y);
            chart1.Series[0].Label = "#PERCENT";
            chart1.Series[0].LegendText = "#AXISLABEL";

        }
    }
}