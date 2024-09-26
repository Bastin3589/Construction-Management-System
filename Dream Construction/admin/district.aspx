<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="district.aspx.cs" Inherits="Dream_Construction.admin.district" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-6 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Basic form elements</h4>
                <p class="card-description">Basic form elements </p>
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">District</label>
                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Name" Width="719px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must start with capital letter followed by upper or lowercase letters" ValidationExpression="^[A-Za_z][A-Za-z -]+$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Button ID="submit" runat="server" class="btn btn-gradient-primary me-2" Text="Register"  OnClick="submit_Click1" Width="900px"  />
                    </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
