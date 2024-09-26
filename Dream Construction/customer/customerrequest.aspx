<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="customerrequest.aspx.cs" Inherits="Dream_Construction.customer.customerrequest" %>

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
                                <p>
                                    S6 BCA, SANTHIGIRI COLLEGE
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
                                <asp:Label ID="sqftt" runat="server" Text="Sq.Ft:" CssClass="font-weight-bold"></asp:Label>
                                <asp:TextBox ID="sqft" runat="server" CssClass="form-control " placeholder="Square Feet" Width="510px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                                    ControlToValidate="sqft"
                                    ErrorMessage="Sqft is required."
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lroomno" runat="server" Text="Required no of Rooms:" CssClass="font-weight-bold"></asp:Label>
                                <asp:TextBox ID="roomno" runat="server" CssClass="form-control " placeholder="Rooms" Width="510px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="roomno"
                                    ErrorMessage="*Room no is required."
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>



                            <div class="form-group">
                                <asp:Label ID="ldescription" runat="server" Text="Description:" CssClass="font-weight-bold"></asp:Label>
                                <asp:TextBox ID="description" runat="server" CssClass="form-control " placeholder="description" Width="510px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="description"
                                    ErrorMessage="*description is required."
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                   <asp:Label ID="Label1" runat="server" Text="Upload your plan:" CssClass="font-weight-bold"></asp:Label><br />
                                <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-gradient-danger btn-icon-text" Height="59px" Width="512px" />
                            </div>


                            <div class="form-group">
                                <asp:Label ID="llanddetails" runat="server" Text="land Details:" CssClass="font-weight-bold"></asp:Label>
                                <asp:TextBox ID="landdetails" runat="server" CssClass="form-control " placeholder="Land Details" Width="510px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="landdetails"
                                    ErrorMessage="*Email required."
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Expected Budget:" CssClass="font-weight-bold"></asp:Label>
                                <asp:TextBox ID="estimatedbudget" runat="server" CssClass="form-control " placeholder="Estimated Budget" Width="510px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="estimatedbudget"
                                    ErrorMessage="*Estimated Budget required."
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>

                            <asp:Button ID="request" runat="server" Text="Book Now" CssClass="btn" Height="51px" Width="511px" OnClick="request_Click" /><br /><br />
                            <asp:Button ID="cancel" runat="server" CssClass="btn" Text="Cancel" Height="51px" Width="511px" />












                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>







</asp:Content>
