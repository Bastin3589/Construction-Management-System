<%@ Page Title="" Language="C#" MasterPageFile="~/contractor/contractormaster.Master" AutoEventWireup="true" CodeBehind="contractorreqviewmore.aspx.cs" Inherits="Dream_Construction.contractor.contractorreqviewmore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div class="blog">
        <div class="container">
            <div class="section-header text-center">
                <p>Latest Blog</p>
                <h2>Latest From Our Blog</h2>
            </div>
            <div class="row blog-page">


                 <div class="col-lg-3"></div>
                <asp:ListView ID="listview1" runat="server">
                    <ItemTemplate>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="blog-item"   style ="width: 500px;" >
                            <div class="blog-img">
                                 <img src="../upload/<%# Eval("image")%>" alt="Image"   />
                            </div>
                            <div class="blog-title">
                                <h3><%#Eval("customername")%></h3>
                                <a class="btn" href="">+</a>
                            </div>
                            <div class="blog-meta">
                                <p>By <%#Eval("categoryname")%> </a></p>
                                <p>In<a href="">Construction</a></p>
                            </div>
                            <div class="blog-text">
                                <p>
                                 Address :      <%#Eval("address")%> <br />
                                  Contact No :   <%#Eval("contactno")%> <br />
                                    Description: <%#Eval("description")%> <br />
                                     No of Rooms : <%#Eval("roomno")%> <br />
                                    Request Date : <%#Eval("reqdate")%> <br />
                                   Category Name :  <%#Eval("categoryname")%> <br />
                                    Status : <%#Eval("status")%> <br />
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                     </asp:ListView>
               
                <br />
                <br />
                
               
            </div>
        </div>
        <div>
                   Advance Amount  <asp:TextBox ID="txtadvamt" runat="server"></asp:TextBox><br /><br />
               Total Amount <asp:TextBox ID="txttotamamt" runat="server"></asp:TextBox>
                </div>
                
        <div style="
 
    margin-left: 463px;
">
                     <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Accept" OnClick="Button1_Click" style="
    padding-left: 25px;
    background-color: #fdbe33;
    padding-right: 25px;
" />
    <asp:Button ID="Button2" runat="server"  Class="btn" Text="Reject" style="
    padding-right: 20px;
    padding-left: 26px;
    background-color: #645d4c;
"/>
                </div>
    </div>

  
</asp:Content>
