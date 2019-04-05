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
        <asp:DetailsView OnDataBound="DetailsView1_DataBinding" ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="nome" DataSourceID="SqlLogin">
            <Fields>
                <asp:BoundField DataField="nome" HeaderText="nome" ReadOnly="True" SortExpression="nome"></asp:BoundField>
                <asp:BoundField DataField="perfil" HeaderText="perfil" SortExpression="perfil"></asp:BoundField>
                <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlLogin" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nome], [perfil], [nprocesso] FROM [utilizadores]
where nome=@nome and palavra_passe=HASHBYTES('SHA2_512',@palavra_passe)">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbNome" PropertyName="Text" Name="nome" DbType="AnsiString"></asp:ControlParameter>
                <asp:ControlParameter ControlID="tbPassword" PropertyName="Text" Name="palavra_passe" DbType="AnsiString"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div runat="server" id="DivCursos"></div>
    <div runat="server" id="DivDisciplinas"></div>
</asp:Content>
