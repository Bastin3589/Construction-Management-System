<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guestmaster.Master" AutoEventWireup="true" CodeBehind="customerreg.aspx.cs" Inherits="Dream_Construction.Guest.customerreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <div class="contact wow fadeInUp">
                <div class="container">
                    <div class="section-header text-center">
                        <p>BUILDERZ</p>
                        <h2>Customer Registration</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact-info">
                                <div class="contact-item">
                                    <i class="flaticon-address"></i>
                                    <div class="contact-text">
                                        <h2>Location</h2>
                                        <p>S6 BCA, SANTHIGIRI COLLEGE
                                        </p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="flaticon-call"></i>
                                    <div class="contact-text">
                                        <h2>Phone</h2>
                                        <p>+91 88481 81237</p>
                                    </div>
                                </div>
                                <div class="contact-item">
                                    <i class="flaticon-send-mail"></i>
                                    <div class="contact-text">
                                        <h2>Email</h2>
                                        <p>bastinprasad300@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="contact-form">
                                <div id="success"></div>
                                <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                  <div class="form-group">
        <asp:Label ID="lbname" runat="server" Text="Customer Name:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="customername" runat="server" CssClass="form-control " placeholder="Customer name" Width="510px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                ControlToValidate="customername"
                ErrorMessage="Username is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="lblDistrictName" runat="server" Text="District Name:" CssClass="font-weight-bold"></asp:Label>
        <asp:DropDownList ID="ddldistrict" runat="server" CssClass="form-control " placeholder="Enter a District" Width="510px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged"></asp:DropDownList>
    </div>


    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="location Name:" CssClass="font-weight-bold"></asp:Label>
        <asp:DropDownList ID="ddllocation" runat="server" CssClass="form-control " placeholder="location" Width="510px"></asp:DropDownList>
    </div>
                                        <div class="form-group">
        <asp:Label ID="lhousename" runat="server" Text="Customer Housename:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="customerhousename" runat="server" CssClass="form-control " placeholder="housename" Width="510px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="customerhousename"
                ErrorMessage="*Address is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="lpincode" runat="server" Text="Customer Pincode:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="customerpincode" runat="server" CssClass="form-control " placeholder="pincode" Width="510px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="customerpincode"
                ErrorMessage="*Pincode is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>


    <div class="form-group">
        <asp:Label ID="lemail" runat="server" Text="Customer Email:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="customeremail" runat="server" CssClass="form-control " placeholder="email" Width="510px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="customeremail"
                ErrorMessage="*Email required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <asp:Label ID="lcontact" runat="server" Text="Customer Contact:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="customercontact" runat="server" CssClass="form-control " placeholder="contact" Width="510px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ControlToValidate="customercontact"
                ErrorMessage="*Contact Number required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>






    <div class="form-group">
        <asp:Label ID="uname" runat="server" Text="Customer Username:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="username" runat="server" CssClass="form-control " placeholder="username" Width="510px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                ControlToValidate="username"
                ErrorMessage="*Username required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="upassword" runat="server" Text="Customer password:" CssClass="font-weight-bold"></asp:Label>
        <asp:TextBox ID="password" runat="server" CssClass="form-control " placeholder="password" Width="510px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                ControlToValidate="password"
                ErrorMessage="*Password required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
    </div>

    <asp:Button ID="register" runat="server" Text="Register" CssClass="btn" OnClick="register_Click" Height="51px" />
    <asp:Button ID="cancel" runat="server" CssClass="btn" Text="Cancel" Height="51px" />











                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

   



</asp:Content>
