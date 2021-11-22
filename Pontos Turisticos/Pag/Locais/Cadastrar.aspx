<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Cadastrar.aspx.cs" Inherits="Pontos_Turisticos.Pag.Locais.Cadastrar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .ajuste {
            
            text-align: center;
        }


    </style>

    <div class="container ajuste">
        <div class="row justify-content-center">
            <div>
                <h1>Cadastrar Ponto Turistico</h1>
            </div>

            <div class="form-group">
                <asp:Label ID="lblNomeP" Width="110px" runat="server" Text="Nome do Ponto:"></asp:Label>
                <asp:TextBox ID="txtNomeP" runat="server" Width="350px"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblUf" runat="server" Width="110px" Text="Cidade:"></asp:Label>
                <asp:DropDownList ID="dropUf" runat="server">
                    <asp:ListItem Text="AC" Value="AC" />
                    <asp:ListItem Text="AL" Value="Al" />
                    <asp:ListItem Text="BA" Value="BA" />
                    <asp:ListItem Text="CE" Value="CE" />
                    <asp:ListItem Text="DF" Value="DF" />
                    <asp:ListItem Text="ES" Value="ES" />
                    <asp:ListItem Text="GO" Value="GO" />
                    <asp:ListItem Text="MA" Value="MA" />
                    <asp:ListItem Text="MT" Value="MT" />
                    <asp:ListItem Text="MS" Value="MS" />
                    <asp:ListItem Text="MG" Value="MG" />
                    <asp:ListItem Text="PA" Value="PA" />
                    <asp:ListItem Text="PB" Value="PB" />
                    <asp:ListItem Text="PR" Value="PR" />
                    <asp:ListItem Text="PE" Value="PE" />
                    <asp:ListItem Text="PI" Value="PI" />
                    <asp:ListItem Text="RJ" Value="RJ" />
                    <asp:ListItem Text="RN" Value="RN" />
                    <asp:ListItem Text="RS" Value="RS" />
                    <asp:ListItem Text="RO" Value="RO" />
                    <asp:ListItem Text="RR" Value="RR" />
                    <asp:ListItem Text="SC" Value="SC" />
                    <asp:ListItem Text="SP" Value="SP" />
                    <asp:ListItem Text="SE" Value="SE" />
                    <asp:ListItem Text="TO" Value="TO" />
                </asp:DropDownList>
                
                <asp:TextBox ID="txtCid" Width="230px" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblRefe" runat="server" Width="110px" Text="Referência"></asp:Label>
                <asp:TextBox ID="txtRefe" runat="server" Width="400px"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblDescr" runat="server" Width="110px" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txtDescr" runat="server" Width="400px"></asp:TextBox>
            </div>



            <div class="form-group">
                <asp:Button ID="btnCadastrar" CssClass="btn btn-primary" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </div>
        </div>

    </div>





</asp:Content>
