<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Dream_Construction.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Dream Constructions</h4>
                <p class="card-description">Since 2023 </p>
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Category Registration</label>
                        <asp:TextBox ID="category" class="form-control" runat="server" placeholder="Category" Width="1029px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="category" ErrorMessage="Please fill out the field"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="FileUpload1"  runat="server" class="btn btn-gradient-danger btn-icon-text" Width="741px" /> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="No choosen file"></asp:RequiredFieldValidator>
                        <br /> <br />

                        <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary me-2 "  Text="Register" Width="740px" OnClick="Button1_Click" />
                    </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
