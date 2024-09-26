using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization;


namespace Dream_Construction.admin
{
    public partial class mostreqpie : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            DataTable objdatatable = db.exedatatable("select COUNT(*) as count,d.districct from tbl_district d inner join tbl_customer c on c.distid=d.distid group by d.distid,d.districct");
            string[] x = new string[objdatatable.Rows.Count];

            int[] y = new int[objdatatable.Rows.Count];
            for (int i = 0; i < objdatatable.Rows.Count; i++)
            {
                x[i] = objdatatable.Rows[i]["districct"].ToString();
                y[i] = Convert.ToInt32(objdatatable.Rows[i]["count"]);
            }
            chart1.Series[0].Points.DataBindXY(x, y);
            chart1.Series[0].Label = "#PERCENT";
            chart1.Series[0].LegendText = "#AXISLABEL";


        }
    }
}