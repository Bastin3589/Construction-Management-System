<%@ Page Title="" Language="C#" MasterPageFile="~/contractor/contractormaster.Master" AutoEventWireup="true" CodeBehind="contractorviewreq.aspx.cs" Inherits="Dream_Construction.contractor.contractorviewreq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            
            <asp:TemplateField HeaderText="SI NO">
                <ItemTemplate>
                    <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:BoundField DataField="customername" HeaderText="Customer Name" />
            <asp:BoundField DataField="categoryname" HeaderText="Category Name" />
            <asp:BoundField DataField="sqft" HeaderText="Sqft" />
            <asp:BoundField DataField="reqdate" HeaderText="Request Date" />
            <asp:BoundField DataField="landdetails" HeaderText="Land Details" />
            <asp:BoundField DataField="custbudget" HeaderText="Budget" />
             <asp:BoundField DataField="roomno" HeaderText="room no" />
            <asp:HyperLinkField DataNavigateUrlFields="requestid" DataNavigateUrlFormatString="contractorreqviewmore.aspx?reqid={0}" HeaderText="View More" Text="View More" />
        </Columns>

        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#FDBE33" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>
</asp:Content>
