<%@ Page Title="Locação de Livro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locacao.aspx.cs" Inherits="BibliotecaWeb.Locacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2> <%: Page.Title %></h2>

    

    <div>
        <asp:Label ID="rgusuarioLabel" runat="server" Text="RG do usuário"></asp:Label>

        <div>

            <asp:TextBox ID="rgusuarioTextBox" runat="server"></asp:TextBox>
        </div>

    </div><br /><br />

   <%-- <div>
        <asp:Label ID="idfuncionarioLabel" runat="server" Text="ID_Funcionário"></asp:Label>

        <div>

            <asp:TextBox ID="idfuncionarioTextBox" runat="server"></asp:TextBox>
        </div>

    </div><br /><br />--%>

    <%--<div>
        <asp:Label ID="idLivroLabel" runat="server" Text="ID_Livro"></asp:Label>

        <div>

            <asp:TextBox ID="idLivroTextBox" runat="server"></asp:TextBox>
        </div>

    </div><br /><br />--%>


    <%--<div>
        <asp:Label ID="datasaidaLabel" runat="server" Text="Data do empréstimo"></asp:Label>

        <div>

            <asp:TextBox ID="datasaidaTextBox" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
        </div>

    </div><br /><br />--%>

   <%-- <div>
        <asp:Label ID="dataentregaLabel" runat="server" Text="Data da devolução"></asp:Label>

        <div>

            <asp:TextBox ID="dataentregaTextBox" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
        </div>

    </div><br /><br />--%>

    <div class="text">


        <asp:Button ID="pesquisarButton" runat="server" Text="Pesquisar" OnClick="pesquisarButton_Click" />
    </div><br />

    
    <div>
        <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>

    </div><br /><br />

    <asp:GridView  ID="locacaoGridView" runat="server" Font-Size="X-Large" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="530px" AllowSorting="True" BorderStyle="Solid" EmptyDataText="Nenhum resultado encontrado.">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idLivro" HeaderText="ID_Livro" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" />
            <asp:BoundField DataField="Titulo" HeaderText="Título" />
            <asp:BoundField DataField="Nome" HeaderText="Locatário" />
            <asp:BoundField DataField="RG" HeaderText="RG" />
            <asp:HyperLinkField Text="Detalhes..." DataNavigateUrlFields="idLivro" DataNavigateUrlFormatString="DetalhesLivro.aspx?idLivro={0}" NavigateUrl="~/DetalhesLivro.aspx" />


            <asp:HyperLinkField NavigateUrl="~/EditarLivro.aspx" Text="Editar"  DataNavigateUrlFormatString="EditarLivro.aspx?idLivro={0}" DataNavigateUrlFields="idLivro" />
               
            


            <%--<asp:TemplateField ShowHeader="False">
            
                <ItemTemplate>
          <% if (Context.User.Identity.IsAuthenticated) { %>
             <asp:LinkButton ID="Button" runat="server" Text="Reservar" OnCommand="Button_Click" CommandArgument='<%# Eval("idLivro") %>'></asp:LinkButton>
        <% } %>
        </ItemTemplate>
        </asp:TemplateField>--%>

            

        </Columns>
        
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

       
        
    </asp:GridView>



    <div>
        <asp:Label ID="dataLabel" runat="server" Text="Data de Devolução"></asp:Label>

        <div>

            <asp:TextBox ID="dataTextBox" runat="server" TextMode="Date"></asp:TextBox>
        </div>

    </div><br /><br />


    <div class="text">


        <asp:Button ID="alocarButton" runat="server" Text="Alocar" OnClick="AlocarButton_Click" />
    </div><br />

</asp:Content>
