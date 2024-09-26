<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guestmaster.Master" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="Dream_Construction.Guest.forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label runat="server" Text="Email"></asp:Label>
 <br />
 <asp:TextBox id="txtemail" runat="server"></asp:TextBox>
 <br />

 <asp:Button runat="server" Text="Forget" OnClick="Unnamed3_Click" />

</asp:Content>
