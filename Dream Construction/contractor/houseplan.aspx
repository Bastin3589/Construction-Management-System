<%@ Page Title="" Language="C#" MasterPageFile="~/contractor/contractormaster.Master" AutoEventWireup="true" CodeBehind="houseplan.aspx.cs" Inherits="Dream_Construction.contractor.houseplan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="contact wow fadeInUp">
        <div class="container">
            <div class="section-header text-center">
                <p>BUILDERZ</p>
                <h2>House Plan</h2>
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
                         
                          <asp:Label ID="categoryddl" runat="server" Text="Category:" CssClass="font-weight-bold"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control " runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        </div>


                      <div class="form-group">
                                   <asp:Label ID="Label1" runat="server" Text="House:" CssClass="font-weight-bold"></asp:Label><br />
                                <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-gradient-danger btn-icon-text" Height="59px" Width="512px" />
                            </div>


                       <div class="form-group">
                                   <asp:Label ID="Label2" runat="server" Text="Plan:" CssClass="font-weight-bold"></asp:Label><br />
                                <asp:FileUpload ID="FileUpload2" runat="server" class="btn btn-gradient-danger btn-icon-text" Height="59px" Width="512px" />
                            </div>
                      
                <div class="form-group">
                     <asp:Label ID="Label3" runat="server" Text="description:" CssClass="font-weight-bold"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" Height="97px" Width="508px"></asp:TextBox>
                </div>
                                   <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" Height="51px" OnClick="register_Click" />
                            <asp:Button ID="Button2" runat="server"  CssClass="btn" Text="Cancel" Height="51px" />
                               </div>
                <</div>

           


               

   
</asp:Content>
