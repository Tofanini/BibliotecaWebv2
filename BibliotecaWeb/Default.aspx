<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BibliotecaWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <p>Seja Bem-vindo a sua Biblioteca Web!<br /> Você é novo por aqui? Cadastre-se ou faça login!</p>
        <p><a href="/Account/Register.aspx" class="btn btn-primary btn-lg">Cadastre-se &raquo;</a>
        <a href="/Account/Login.aspx" class="btn btn-primary btn-lg">Login &raquo;</a></p>
           

    </div>


</asp:Content>
