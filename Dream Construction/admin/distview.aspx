<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="distview.aspx.cs" Inherits="Dream_Construction.admin.distview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-striped" AllowPaging="True" DataKeyNames="distid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="7">
        <Columns>
            <asp:TemplateField HeaderText="SI.NO">
                <ItemTemplate>
                    <%#Container.DataItemIndex+1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" value='<%#Eval("distid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="districct" HeaderText="District Name" />
            <asp:CommandField HeaderText="Edit" ControlStyle-CssClass="btn btn-gradient-info btn-rounded btn-fw" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete" ControlStyle-CssClass="btn btn-gradient-danger btn-rounded btn-fw" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br /> 

    <asp:Button ID="deletall" runat="server" class="btn btn-gradient-danger btn-fw" Text="Delete All" Width="856px" />
</asp:Content>
