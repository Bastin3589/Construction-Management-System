using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dream_Construction.contractor
{
    public partial class contractorreqviewmore : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    string  reqid = Request.QueryString["reqid"].ToString();
                Session["requestid"] = reqid;
                db.filllistview("select * from tbl_request r inner join tbl_customer c on r.customerid=c.loginid inner join tbl_category ca on r.categoryid=ca.categoryid where  r.requestid=" + reqid + "", listview1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string reqid = Request.QueryString["reqid"].ToString();
                Session["requestid"] = reqid;
                     int i = db.exenonquery("update tbl_request set status='Accepted',advanceamt='"+txtadvamt.Text+ "',totalamt='"+txttotamamt.Text+"' where requestid= " + reqid + "");
             
                if (i == 1)
                {
                    Response.Write("<script> alert('Contract Accepted Successfully!')</script>");
                }
                else
                {
                    Response.Write("<script> alert('Contract Acception failed!')</script>");
                }
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string reqid = Request.QueryString["reqid"].ToString();
            Session["requestid"] = reqid;
            int i = db.exenonquery("update tbl_request set status='Rejected' where requestid= " + reqid + "");

            if (i == 1)
            {
                Response.Write("<script> alert('Contract Rejected!')</script>");
            }
            else
            {
                Response.Write("<script> alert('Contract Rejection failed!')</script>");
            }
        }
    }
    }
