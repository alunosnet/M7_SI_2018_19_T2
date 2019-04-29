<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Adicionar.aspx.cs" Inherits="M7_TrabalhoModelo_T2.Admin.Alunos.Adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Adicionar alunos</h1>
    <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
        <EditItemTemplate>
            nprocesso:
            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
            nome:
            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
            morada:
            <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
            cp:
            <asp:TextBox Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /><br />
            data_nascimento:
            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
            genero:
            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nome:
            <asp:TextBox MaxLength="60" Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="O nome é obrigatório." ControlToValidate="nomeTextBox" CssClass="alert" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator><br />
            Morada:
            <asp:TextBox MaxLength="100" Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tem de indicar uma morada." ControlToValidate="moradaTextBox" CssClass="alert-danger" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            Código Postal:
            <asp:TextBox MaxLength="8" Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpTextBox" CssClass="alert-danger" Display="Dynamic" EnableClientScript="False" ErrorMessage="Tem de indicar o código postal."></asp:RequiredFieldValidator>
            <asp:CustomValidator OnServerValidate="CustomValidator1_ServerValidate" ID="CustomValidator1" runat="server" ErrorMessage="O código postal está errado. Tem de estar no formato ####-###" ControlToValidate="cpTextBox" CssClass="alert-danger" Display="Dynamic" EnableClientScript="False"></asp:CustomValidator>
            <br />
            data_nascimento:
            <asp:TextBox TextMode="Date" Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tem de indicar uma data de nascimento." ControlToValidate="data_nascimentoTextBox" CssClass="alert-danger" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="A data de nascimento não é válida. A data tem de estar entre 1950 e 2050." ControlToValidate="data_nascimentoTextBox" CssClass="alert-danger" Display="Dynamic" EnableClientScript="False" Type="Date" MinimumValue="01-01-1950" MaximumValue="01-01-2050"></asp:RangeValidator>
            <br />
            genero:
            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("genero") %>'>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Feminino</asp:ListItem>
            </asp:DropDownList>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            nprocesso:
            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
            nome:
            <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
            morada:
            <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
            cp:
            <asp:Label Text='<%# Bind("cp") %>' runat="server" ID="cpLabel" /><br />
            data_nascimento:
            <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
            genero:
            <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
            <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource OnInserted="SqlAlunos_Inserted" runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
        InsertCommand="INSERT INTO alunos(nome, morada, cp, data_nascimento, genero) VALUES (@nome, @morada, @cp, @data_nascimento, @genero); SET @novo=SCOPE_IDENTITY();" SelectCommand="select * from alunos">
        <InsertParameters>
            <asp:Parameter Name="nome"></asp:Parameter>
            <asp:Parameter Name="morada"></asp:Parameter>
            <asp:Parameter Name="cp"></asp:Parameter>
            <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="genero"></asp:Parameter>
            <asp:Parameter Name="novo" Direction="Output" DbType="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
