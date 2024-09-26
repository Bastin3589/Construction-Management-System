<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="mostreqpie.aspx.cs" Inherits="Dream_Construction.admin.mostreqpie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Chart ID="chart1" runat="server" Height="379px" Width="1220px">
        <Legends>
            <asp:Legend Alignment="Center" Docking="Left" IsTextAutoFit="true" Name="StateName" LegendStyle="Table" />
        </Legends>

        <series>
            <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1"></asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </chartareas>
    </asp:Chart>

</asp:Content>
