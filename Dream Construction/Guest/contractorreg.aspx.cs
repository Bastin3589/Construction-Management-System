using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;

namespace Dream_Construction.Guest
{
    public partial class contractorreg : System.Web.UI.Page
    {
        dboperation db = new dboperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("Select * from tbl_district", ddldistrict, "districct", "distid");
            }
        }

        protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillddl("Select * from tbl_location where distid=" + ddldistrict.SelectedValue + "", ddllocation, "location", "locationid");
        }

        protected void register_Click(object sender, EventArgs e)
        {
            object ob1 = db.exescalar("select count(username) from tbl_login where username= '" + username.Text + "'");
            if (Convert.ToInt32(ob1) == 0)
             {

                object ob = db.exescalar("insert into tbl_login values('" + username.Text + "','" + password.Text + "','contractor','approved');select @@IDENTITY");
                db.Dbclose();
                if (ob.ToString() != null)
                {



                    int s = db.exenonquery("insert into tbl_contractor values ('" + contractorname.Text + "','" + housename.Text + "','" + contractorcontact.Text + "','" + email.Text + "','" + TextBox1.Text + "', '" + FileUpload1.FileName + "','" + ddllocation.SelectedValue + "','" + ob.ToString() + "')");
                    db.Dbclose();



                    if (s == 1)
                    {
                        string to = email.Text; //To address      
                        string from = "bastinprasad300@gmail.com"; //From address      
                        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);

                        string mailbody = "Thank you for reaching us.You have  successfully registered to our website."; //mail content here
                        message.Subject = "Registerd";
                        message.Body = mailbody;
                        message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp      
                        System.Net.NetworkCredential basicCredential1 = new
                        System.Net.NetworkCredential("bastinprasad300@gmail.com", "ldubfpgykggyjoyq");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = true;
                        // client.UseDefaultCredentials = false;
                        client.Credentials = basicCredential1;
                        try
                        {
                            client.Send(message);
                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }


                        Response.Write("<script>alert('Your Registration Successfully Completed!');window.location='../Guest/login/loginpage.aspx'</script>");
                        //Response.Redirect("../Guest/login/loginpage.aspx");


                    }
                    else
                    {
                        db.exenonquery("delete from tbl_login where lognid='" + ob.ToString() + "'");
                        Response.Write("<script>alert('Yor Registration Faild,Please try again!')</script>");


                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Username Already Exist,Please choose another one!')</script>");


            }

        }
    }
}