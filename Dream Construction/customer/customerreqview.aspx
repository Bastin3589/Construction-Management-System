<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="customerreqview.aspx.cs" Inherits="Dream_Construction.customer.customerreqview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="requestid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <columns>
            <asp:TemplateField HeaderText="SI NO">
                <itemtemplate>
                    <%#Container.DataItemIndex+1%>
                </itemtemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="contractorname" HeaderText="Contractor Name" />

            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="contactno" HeaderText="Contact No" />
            <asp:BoundField DataField="categoryname" HeaderText="Category Name" />
            <asp:BoundField DataField="sqft" HeaderText="Sqft" />
            <asp:BoundField DataField="reqdate" HeaderText="Request Date" />
            <asp:BoundField DataField="landdetails" HeaderText="Land Details" />
            <asp:BoundField DataField="custbudget" HeaderText="Budget" />
            <asp:BoundField DataField="roomno" HeaderText="room no" />
            <asp:BoundField DataField="totalamt" HeaderText="Total" />
            <asp:BoundField DataField="advanceamt" HeaderText="Advance amount" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:TemplateField>
                <itemtemplate>
                   <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("requestid") %>' CommandName="request" Text="Pay Now" OnClick="Button1_Click"  />
                </itemtemplate>
            </asp:TemplateField>
        </columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#FDBE33" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

</asp:Content>
