<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="M7_TrabalhoModelo_T2.Admin.Notas.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Gerir notas</h2>
    <asp:GridView CssClass="table" runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="id_disciplina" HeaderText="id_disciplina" SortExpression="id_disciplina"></asp:BoundField>
            <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
            <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor"></asp:BoundField>
            <asp:BoundField DataField="data" HeaderText="data" SortExpression="data"></asp:BoundField>
            <asp:BoundField DataField="nrmodulo" HeaderText="nrmodulo" SortExpression="nrmodulo"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="delete from notas where id=@id" SelectCommand="select * from notas" UpdateCommand="UPDATE notas SET id_disciplina = @id_disciplina, nprocesso = @nprocesso, valor = @valor, data = @data, nrmodulo = @nrmodulo WHERE (id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id"></asp:Parameter>
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_disciplina"></asp:Parameter>
            <asp:Parameter Name="nprocesso"></asp:Parameter>
            <asp:Parameter Name="valor"></asp:Parameter>
            <asp:Parameter Name="data"></asp:Parameter>
            <asp:Parameter Name="nrmodulo"></asp:Parameter>
            <asp:Parameter Name="id"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
