<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="Dream_Construction.admin.location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="col-12 grid-margin stretch-card" ">--%>
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Location Registration</h4>
                    <p class="card-description"> District </p>

                      <asp:DropDownList ID="DropDownList1" CssClass="form-control form-control-lg"  runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*required" InitialValue="0"></asp:RequiredFieldValidator>

              

                      <div class="form-group"><br />

                                              <p class="card-description"> Location </p>

                   <%--     <label for="exampleInputName1">Location</label>--%>

                          <asp:TextBox ID="txtloc" ControlStyle-CssClass="form-control" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtloc" ErrorMessage="Required"></asp:RequiredFieldValidator>
                      </div>


                      <asp:Button ID="Button1" ControlStyle-CssClass="btn btn-gradient-primary me-2" runat="server" Text="Register" OnClick="Button1_Click" />

                    
                  </div>
                </div>
              </div>
</asp:Content>
