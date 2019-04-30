<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="notas_aluno.aspx.cs" Inherits="M7_TrabalhoModelo_T2.Aluno.notas_aluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlNotas">
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
            <asp:BoundField DataField="nrmodulo" HeaderText="nrmodulo" SortExpression="nrmodulo"></asp:BoundField>
            <asp:BoundField DataField="data" HeaderText="data" SortExpression="data"></asp:BoundField>
            <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT disciplinas.nome, notas.nrmodulo, notas.data, notas.valor FROM disciplinas INNER JOIN notas ON disciplinas.id = notas.id_disciplina WHERE (notas.nprocesso = @nprocesso)">
        <SelectParameters>
            <asp:SessionParameter SessionField="nprocesso" Name="nprocesso"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <h2>Médias por disciplina</h2>
    <asp:GridView CssClass="table" runat="server" ID="gv1" AutoGenerateColumns="False" DataSourceID="SqlMedias">
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
            <asp:BoundField DataField="M&#233;dia" HeaderText="M&#233;dia" ReadOnly="True" SortExpression="M&#233;dia"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlMedias" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT disciplinas.nome, AVG(notas.valor) AS Média FROM disciplinas INNER JOIN notas ON disciplinas.id = notas.id_disciplina WHERE (notas.nprocesso = @nprocesso) GROUP BY disciplinas.id, disciplinas.nome">
        <SelectParameters>
            <asp:SessionParameter SessionField="nprocesso" Name="nprocesso"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
