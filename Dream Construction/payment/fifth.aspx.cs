using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Dream_Construction.payment
{
    public partial class fifth : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblAmoubnt.Text = Session["budget"].ToString();
                lblMurchant.Text = "SanthisoftTechnologies";
                lblTID.Text = "6034563456789867";
                lblDate.Text = DateTime.Now.Date.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int payamount = Convert.ToInt32(Session["budget"].ToString());
            int balamount = Convert.ToInt32(Session["balamount"].ToString());
            if (payamount > balamount)
            {
                Response.Write("<script>alert('Not Sufficient balance')</script>");
            }
            else
            {
                int bnewamount = balamount - payamount;
                DateTime aDate = DateTime.Now;
                //string bookingdate = currentdate.Date.ToString("MM-dd-yyyy");

                string str = "insert into tbl_banktransaction values(" + Session["acno"].ToString() + "," + lblTID.Text + "," + lblAmoubnt.Text + ",'" + aDate.ToString("MM/dd/yyyy") + "',"+ Session["requestid"] + ")";
                Response.Write(str);
                db.exenonquery(str);
                db.exenonquery("update tbl_paymentbank set acbalance=" + bnewamount + " where busername='" + Session["username"].ToString() + "'");               
                db.exenonquery("update tbl_request set status='paymentcompleted' where requestid="+ Session["requestid"] + "");
                //db.exenonquery("update tblbookingdetails set status='paymentcompleted' where billno='" + Session["billno"] + "'");
                //db.exenonquery("update tblbookingdetails set status='paymentcompleted' where billno='" + Session["billno"] + "'");
            }
            Response.Redirect("../customer/custcategoryview.aspx");
            //con.ExecuteData(str);
            ////string sel = "select max(ad_id)as payment from tbl_ad where user_id="+Session["uid"]+"";
            ////DataTable dt = obj.GetDataTable(sel);
            ////string up = "update tbl_ad set ad_status=1 where ad_id="+dt.Rows[0]["payment"]+"";
            ////obj.ExecuteCommand(up);

        
           
           

                // Response.Write(str);
                            }
    }
    }
