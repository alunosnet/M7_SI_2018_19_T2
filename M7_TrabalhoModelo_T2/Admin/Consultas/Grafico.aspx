<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="M7_TrabalhoModeloPrep_2018_19.Admin.Consultas.Grafico" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlAlunosPorGenero">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="genero" YValueMembers="Numero"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource runat="server" ID="SqlAlunosPorGenero" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT genero, COUNT(*) AS Numero FROM alunos GROUP BY genero"></asp:SqlDataSource>
</asp:Content>
