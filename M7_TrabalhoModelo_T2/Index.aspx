<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="M7_TrabalhoModelo_T2.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="DivLogin" 
        class="col-md-3 float-right border">
        Login<br />
        Nome:<asp:TextBox CssClass="form-control" ID="tbNome" runat="server"></asp:TextBox>
        Palavra Passe:<asp:TextBox CssClass="form-control" ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-info" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <div runat="server" id="DivCursos"></div>
    <div runat="server" id="DivDisciplinas"></div>
</asp:Content>
