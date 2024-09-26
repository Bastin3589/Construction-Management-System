<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="housemodels.aspx.cs" Inherits="Dream_Construction.customer.housemodels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="team">
        <div class="container">
            <div class="section-header text-center">
                <p>Our Projects</p>
                <h2>House Plans</h2>
            </div>
            <div class="row">

                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>

<%--                         <div class="col-lg-3 col-md-6 wow fadeinup" data-wow-delay="0.1s">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/team-1.jpg" alt="team image">
                                </div>
                                <div class="team-text">
                                    <h2>adam phillips</h2>
                                    <p>ceo & founder</p>
                                </div>
                                <div class="team-social">
                                    <a class="social-tw" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="social-fb" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="social-li" href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a class="social-in" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>--%>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="../upload/<%# Eval("image")%>" alt="Image"   />
                            </div>
                           
                            <a class="team-text btn " style="width: 260px;" href="viewmorecust.aspx?catid=<%#Eval("categoryid") %>&contactid=<%#Eval("loginid") %>">
                                <h2><%#Eval("categoryname")%></h2>
                                <p><%#Eval("contractorname")%></p>
                             
                            </a>
                        </div>
                    </div>
                        </ItemTemplate>
                  </asp:ListView>
            </div>
        </div>
    </div>


</asp:Content>
