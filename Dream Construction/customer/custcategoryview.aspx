<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="custcategoryview.aspx.cs" Inherits="Dream_Construction.customer.categoryview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="service">
        <div class="container">
            <div class="section-header text-center">
                <p>Our Services</p>
                <h2>Category</h2>
            </div>



            <div class="row">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item">
                                <div class="service-img">
                                    <img src="../upload/<%# Eval("image")%>" alt="Image"   />
                                    <div class="service-overlay">
                                        <p>
                                            Click to Open
                                            <%--Lorem ipsum dolor sit <a href="#">content</a>met, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.--%>
                                        </p>
                                    </div>
                                </div>
                                <div class="service-text">
                                    <h3 style="text-align: center;"><%#Eval("categoryname")%></h3>
                                    <a class="btn" href="housemodels.aspx?catid=<%#Eval("categoryid") %>" >+</a>
                               

                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                  </asp:ListView>
                        </div>
            </div>
                
        </div>
        </div>
</asp:Content>
