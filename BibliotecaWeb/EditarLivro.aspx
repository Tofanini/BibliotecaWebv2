<%@ Page Title="Alterar Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarLivro.aspx.cs" Inherits="BibliotecaWeb.EditarLivro1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%:Page.Title %></h2>





    <div>



        <asp:Label ID="idLivroLabel" runat="server" Text="ID_Livro"></asp:Label>

        <div>
            <asp:TextBox ID="idLivroTextBox" runat="server" AutoPostBack="true" Enabled="false" ></asp:TextBox>

        </div>
    </div><br />

      <div>

        <asp:Label ID="nomeEditoraLabel" runat="server" Text="Editora:"></asp:Label>
        <div>

            <asp:TextBox ID="nomeEditoraTextBox" runat="server" Enabled="false"></asp:TextBox>
        </div>

    </div>
    <br />
    <div>

        <asp:Label ID="tituloLabel" runat="server" Text="Título:"></asp:Label>
        <div>

            <asp:TextBox ID="tituloTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />
    <div>

        <asp:Label ID="edicaoLabel" runat="server" Text="Edição:"></asp:Label>
        <div>

            <asp:TextBox ID="edicaoTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />


    <div>

        <asp:Label ID="anoLabel" runat="server" Text="Ano:"></asp:Label>
        <div>

            <asp:TextBox ID="anoTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />


    <div>

        <asp:Label ID="isbnLabel" runat="server" Text="ISBN:"></asp:Label>
        <div>

            <asp:TextBox ID="isbnTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />
    <div>

        <asp:Label ID="localizacaoLabel" runat="server" Text="Localização:"></asp:Label>
        <div>

            <asp:TextBox ID="localizacaoTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />
    <div>

        <asp:Label ID="assuntoLabel" runat="server" Text="Assunto:"></asp:Label>
        <div>

            <asp:TextBox ID="assuntoTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />
    <div>

        <asp:Label ID="autorLabel" runat="server" Text="Autor:"></asp:Label>
        <div>

            <asp:TextBox ID="autorTextBox" runat="server"></asp:TextBox>
        </div>

    </div>
    <br />


    <div>


        <asp:Button ID="alterarButton" runat="server" Text="Alterar" OnClick="alterarButton_Click" />
    </div>


    <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>

    
</asp:Content>
