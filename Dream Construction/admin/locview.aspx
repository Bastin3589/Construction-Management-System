<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="locview.aspx.cs" Inherits="Dream_Construction.admin.locview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DropDownList ID="ddldistrict" runat="server" ControlStyle-CssClass="btn btn-sm btn-outline-primary dropdown-toggle" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged"  Width="1406px" AutoPostBack="True"></asp:DropDownList>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped"  AutoGenerateColumns="False" Width="550px" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="locationid" OnRowEditing="GridView1_RowEditing" AllowPaging="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   PageSize="6" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="SI.NO">
                 <ItemTemplate>
                    <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                 <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" value='< %#Eval("districtid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="location" HeaderText="Location Name" />
            <asp:TemplateField HeaderText="District">
                 <ItemTemplate>
                     <asp:DropDownList ID="DropDownList1" ControlStyle-CssClass="btn btn-sm btn-outline-primary dropdown-toggle" runat="server"></asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Edit" ControlStyle-CssClass="btn btn-gradient-info btn-rounded btn-fw" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete" ControlStyle-CssClass="btn btn-gradient-danger btn-rounded btn-fw" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
