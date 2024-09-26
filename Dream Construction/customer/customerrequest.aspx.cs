using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.customer
{
    public partial class customerrequest : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected
            void request_Click(object sender, EventArgs e)
        {
            DateTime postdate = DateTime.Now.Date;
                int i = db.exenonquery("insert into tbl_request (customerid,categoryid,sqft,roomno,description,[plan],reqdate,status,landdetails,custbudget,contractorid) " +
                    "values ('"+Session["loginid"]+ "','" + Session["catogoryid"] + "','" + sqft.Text + "','" + roomno.Text + "','" + description.Text + "', '" + FileUpload1.FileName + "'," +
                    "'"+postdate.ToString("MM-dd-yyyy")+ "','requested','" + landdetails.Text + "','"+ estimatedbudget.Text + "',"+ Session["contactid"] + ")");
         

                if (i == 1)
                {
                    Response.Write("<script>alert('Booking Inserted Successfully!')</script>");
                    Response.Redirect("../customer/customerrequest.aspx");
                }
             
            
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
        }
    }
}