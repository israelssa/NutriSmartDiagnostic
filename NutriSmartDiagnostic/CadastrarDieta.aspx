<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastrarDieta.aspx.vb" Inherits="NutriSmartDiagnostic.CadastrarDieta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Cadastro de Dieta</h2>
<p>
    De:&nbsp;
    <asp:TextBox ID="txtDe" runat="server"></asp:TextBox>
&nbsp; Até:&nbsp;
    <asp:TextBox ID="txtAte" runat="server"></asp:TextBox>
</p>
    <p>
Descrição 
<br />
<asp:TextBox ID="txtDieta" runat="server" TextMode="MultiLine" Height="97px" 
            Width="308px"></asp:TextBox>
</p>
    <p>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
</p>
</asp:Content>
