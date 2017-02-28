<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PesquisaLivros.aspx.cs" Inherits="BibliotecaWeb.PesquisaLivros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Bom dia!<br />Como deseja fazer a sua busca?</h2>


    <div class="text1">
        <asp:Label ID="autorLabel" runat="server" Text="Autor" Font-Bold="true" Font-Size="X-Large"></asp:Label>

        <div>
            <asp:TextBox CssClass="tb5" ID="autorTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />

    <div class="text1">
        <asp:Label ID="tituloLabel" runat="server" Text="Título" Font-Bold="true" Font-Size="X-Large"></asp:Label>

        <div>
            <asp:TextBox CssClass="tb5" ID="tituloTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div class="text1">
        <asp:Label ID="nomeEditoraLabel" runat="server" Text="Editora" Font-Bold="true" Font-Size="X-Large"></asp:Label>

        <div>
            <asp:TextBox CssClass="tb5" ID="editoraTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div class="text1">
        <asp:Label ID="assuntoLabel" runat="server" Text="Assunto" Font-Bold="true" Font-Size="X-Large"></asp:Label>

        <div>
            <asp:TextBox CssClass="tb5" ID="assuntoTextBox" runat="server"></asp:TextBox>


        </div>

    </div><br />


    <div class="text1">


        <asp:Button ID="pesquisarButton" runat="server" Text="Pesquisar" OnClick="pesquisarButton_Click" />
    </div><br />

    
    <div>
        <asp:Label ID="mensagemLabel" runat="server" Text=""></asp:Label>

    </div><br /><br />

    <asp:GridView  ID="livrosGridView" runat="server" Font-Size="X-Large" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="530px" AllowSorting="True" BorderStyle="Solid" EmptyDataText="Nenhum resultado encontrado.">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idLivro" HeaderText="ID_Livro" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" />
            <asp:BoundField DataField="Titulo" HeaderText="Título" />
            <asp:BoundField DataField="nomeEditora" HeaderText="Editora" />
            <asp:BoundField DataField="Assunto" HeaderText="Assunto" />
            <asp:HyperLinkField Text="Detalhes..." DataNavigateUrlFields="idLivro" DataNavigateUrlFormatString="DetalhesLivro.aspx?idLivro={0}" NavigateUrl="~/DetalhesLivro.aspx" />


            <asp:HyperLinkField NavigateUrl="~/EditarLivro.aspx" Text="Editar"  DataNavigateUrlFormatString="EditarLivro.aspx?idLivro={0}" DataNavigateUrlFields="idLivro" />
               
            
           <%-- <asp:TemplateField ShowHeader="False">
            
                <ItemTemplate>
          <% if (Context.User.Identity.IsAuthenticated) { %>
             <asp:LinkButton ID="Button" runat="server" Text="Reservar" OnCommand="Button_Click" CommandArgument='<%# Eval("idLivro") %>'></asp:LinkButton>
        <% } %>
        </ItemTemplate>
        </asp:TemplateField>--%>






            <asp:TemplateField ShowHeader="False">
            
                <ItemTemplate>
          <% if (Context.User.Identity.IsAuthenticated) { %>
             <asp:LinkButton ID="Button" runat="server" Text="Reservar" OnCommand="Button_Click" CommandArgument='<%# Eval("idLivro") %>'></asp:LinkButton>
        <% } %>
        </ItemTemplate>
        </asp:TemplateField>

            

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

        
</asp:Content>
