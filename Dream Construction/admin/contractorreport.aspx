<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="contractorreport.aspx.cs" Inherits="Dream_Construction.admin.contractorreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h1><asp:Label ID="Label1" runat="server" Text="Contractor Report"></asp:Label> <br /><br /></h1>  

      <asp:Button ID="Button1" runat="server" Text="Export" OnClick="Button1_Click" CssClass="btn btn-danger" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="957px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:TemplateField HeaderText="SI. NO">
                <ItemTemplate>
                       <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>

            
            <asp:BoundField DataField="contractorname" HeaderText="Name" />
            <asp:BoundField DataField="housename" HeaderText="House Name" />
            <asp:BoundField DataField="email" HeaderText="E-mail" />
            <asp:BoundField DataField="experience" HeaderText="Experience" />

            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
  


</asp:Content>
