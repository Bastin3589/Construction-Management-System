<%@ Page Title="" Language="C#" MasterPageFile="~/contractor/contractormaster.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="Dream_Construction.contractor.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2>
        Change Password
        </h2>
    </div>
    <div>
        <asp:Label runat="server" Text="New Password : "></asp:Label>
        <asp:TextBox runat="server" id="txt_pwd"></asp:TextBox>
    </div>
    <div>
        <asp:Button runat="server" id="btnpwd" Text="Change Password" OnClick="btnpwd_Click" />
    </div>


</asp:Content>
