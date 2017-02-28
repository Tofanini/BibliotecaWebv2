﻿<%@ Page Title="Cadastro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BibliotecaWeb.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>



	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="js/valida_cpf_cnpj.js"></script>

    <div class="form-horizontal">
        <h4>Criar uma nova conta</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />


		<div class="form-group">
            <asp:Label runat="server"  Font-Bold="true" CssClass="col-md-2 control-label">Nome</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="nomeTextBox" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="nomeTextBox"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="O campo nome é obrigatório." />
            
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server"  Font-Bold="true" CssClass="col-md-2 control-label">Data de Nascimento</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="datanascimentoTextBox" TextMode="Date" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="datanascimentoTextBox"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="O campo Data de Nascimento é obrigatório." />
            
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" Font-Bold="true" CssClass="col-md-2 control-label">RG</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RG" TextMode="Number" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="RG"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="O campo RG é obrigatório." />
            
            </div>
        </div>

		<div class="form-group">
            <asp:Label runat="server" Font-Bold="true"
				CssClass="col-md-2 control-label">CPF</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CPF" TextMode="Number" CssClass="form-control" onblur="javascript:valida_cpf_cnpj(this.value);alert(CPF Inválido);" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CPF"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="O campo CPF é obrigatório." />
            
            </div>
        </div>




        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="O campo email é obrigatório." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The campo password é obrigatório." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="o campo confirmação de password é obrigatório." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="O password e confirmação de password não conferem." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Cadastrar" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
