﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="M7_TrabalhoModelo_T2.Admin.Alunos.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Nome:<asp:TextBox ID="TextBox1" runat="server" />
    <asp:Button ID="bt1" runat="server" Text="Pesquisar" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
        <Columns>
            <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
            <asp:BoundField DataField="morada" HeaderText="morada" SortExpression="morada"></asp:BoundField>
            <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp"></asp:BoundField>
            <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
            <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero"></asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="nprocesso" DataNavigateUrlFormatString="editar.aspx?nprocesso={0}" Text="Editar" HeaderText="Editar"></asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="nprocesso" DataNavigateUrlFormatString="Apagar.aspx?nprocesso={0}" Text="Apagar" HeaderText="Apagar"></asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>