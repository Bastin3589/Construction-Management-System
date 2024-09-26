<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="categoryview.aspx.cs" Inherits="Dream_Construction.categoryview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" Width="1312px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" DataKeyNames="categoryid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:TemplateField HeaderText="SI.NO">
                  <ItemTemplate>
                    <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                 <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" value='< %#Eval("categoryid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="categoryname" HeaderText="category" />
            <asp:TemplateField HeaderText="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("image")%>'></asp:TextBox>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image", "~/upload/{0}") %>' Height="137px" Width="132px" />
                </ItemTemplate>
         
            </asp:TemplateField>
            <asp:CommandField HeaderText="edit" ControlStyle-CssClass="btn btn-gradient-info btn-rounded btn-fw" ShowEditButton="True" />
            <asp:CommandField HeaderText="delete" ControlStyle-CssClass="btn btn-gradient-danger btn-rounded btn-fw" ShowDeleteButton="True" />
        </Columns>


    </asp:GridView>

</asp:Content>
