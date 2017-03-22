<%@ Page Title="Cadastro de Editora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroEditora.aspx.cs" Inherits="BibliotecaWeb.CadastroEditora" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
     <script src="../Scripts/valida_cpf_cnpj.js"></script>

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="form-horizontal">
        <h4>Cadastro de Editora.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Nome</asp:Label>

            <div class="col-md-10">
                <asp:TextBox runat="server" ID="nomeTextBox" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="nomeTextBox"
                    CssClass="text-danger" ErrorMessage="O campo nome é obrigatório!" />
            </div>
        </div>




        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Endereço</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="enderecoTextBox" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="enderecoTextBox"
                    CssClass="text-danger" ErrorMessage="O campo endereço é obrigatório!" />

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Bairro</asp:Label>
            <div class="col-md-10">

                <asp:TextBox runat="server" ID="bairroTextBox" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="bairroTextBox"
                    CssClass="text-danger" ErrorMessage="O campo bairro é obrigatório!" />
            </div>
        </div>





        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Cidade</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cidadeTextBox" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cidadeTextBox"
                    CssClass="text-danger" ErrorMessage="O campo cidade é obrigatório!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">UF</asp:Label>
            <div class="col-md-10">
                    <asp:DropDownList ID="ufDropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem>N/S</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>AP</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>DF</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>GO</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MG</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>PE</asp:ListItem>
                        <asp:ListItem>PB</asp:ListItem>
                        <asp:ListItem>PI</asp:ListItem>
                        <asp:ListItem>PR</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                        <asp:ListItem>RN</asp:ListItem>
                        <asp:ListItem>RO</asp:ListItem>
                        <asp:ListItem>RR</asp:ListItem>
                        <asp:ListItem>RS</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SE</asp:ListItem>
                        <asp:ListItem>SP</asp:ListItem>
                        <asp:ListItem>TO</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>


        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Telefone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="telefoneTextBox" CssClass="form-control" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="telefoneTextBox"
                    CssClass="text-danger" ErrorMessage="O campo telefone é obrigatório!" />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">CEP</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cepTextBox" CssClass="form-control" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cepTextBox"
                    CssClass="text-danger" ErrorMessage="O campo cep é obrigatório!" />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">CNPJ</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cnpjTextBox" CssClass="form-control" TextMode="Number" onblur="javascript:if(!valida_cpf_cnpj(this.value))alert('CNPJ inválido!');" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cnpjTextBox"
                    CssClass="text-danger" ErrorMessage="O campo cidade é obrigatório!" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">

            <asp:Button ID="cadastrarButton" runat="server" Text="Cadastrar" OnClick="cadastrarButton_Click" CssClass="btn btn-default"/>
        </div>
        <br />

        <div>

            <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>
        </div>


  </div>
		</div>

</asp:Content>
