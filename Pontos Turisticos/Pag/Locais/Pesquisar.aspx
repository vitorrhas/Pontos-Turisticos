<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Pesquisar.aspx.cs" Inherits="Pontos_Turisticos.Pag.Locais.Pesquisar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .ajustar{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .GridAjust{
            width: 100%;
            border: solid 3px #0094ff;
            border-collapse: collapse;
        }

        .GridAjust td{
            padding: 5px;
        }

        .GridAjust th{
                color: #ffffff;
                padding: 4px 6px;
                background: #001160;
                text-align: center;
            }

    </style>
<div class="ajustar">
    <asp:Label ID="lblNomeP" runat="server" Text="Nome do Ponto"></asp:Label>
    <asp:TextBox ID="txtNomeP" MaxLength="100" runat="server"></asp:TextBox>
    <asp:Button ID="btnPesquisar" Text="Pesquisar" runat="server" CssClass="btn btn-primary" OnClick="btnPesquisar_Click"/> <br />

    <asp:GridView ID="gvLocais" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="gvLocais_PageIndexChanging" runat="server" CssClass="GridAjust">
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="Nome do Ponto Turistico" />
            <asp:BoundField DataField="uf" HeaderText="UF" />
            <asp:BoundField DataField="cidade" HeaderText="Cidade" />
            <asp:BoundField DataField="referencia" HeaderText="Referência" />
            <asp:BoundField DataField="descr" HeaderText="Descrição" />
        </Columns>
         <PagerSettings Mode="NextPrevious" NextPageImageUrl="~/img/next1.png" NextPageText="Pr&#243;ximo" PreviousPageImageUrl="~/img/back1.png" LastPageText="" PreviousPageText="Anterior" />
        <PagerStyle HorizontalAlign="Right" />
    </asp:GridView>
</div>













</asp:Content>
