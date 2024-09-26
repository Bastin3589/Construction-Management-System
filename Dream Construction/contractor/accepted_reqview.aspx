<%@ Page Title="" Language="C#" MasterPageFile="~/contractor/contractormaster.Master" AutoEventWireup="true" CodeBehind="accepted_reqview.aspx.cs" Inherits="Dream_Construction.contractor.accepted_reqview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
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

            <asp:HyperLinkField DataNavigateUrlFields="requestid" DataNavigateUrlFormatString="accepted_reqviewmore.aspx?reqid={0}" HeaderText="View More" Text="View More" />
        </Columns>

    </asp:GridView>
</asp:Content>
