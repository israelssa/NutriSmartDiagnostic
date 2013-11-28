<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastroHistoricoClinico.aspx.vb" Inherits="NutriSmartDiagnostic.CadastroHistoricoClinico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Histórico Clinico </h2>
    <p>
        Histórico Familiar
        <br />
        <asp:TextBox ID="txtHistorico" runat="server" TextMode="MultiLine" Width="300px" Height="60px"></asp:TextBox>
    </p>
    <p>
        Patologias
        <br />
        <asp:TextBox ID="txtPatologias" runat="server" TextMode="MultiLine" Width="300px" Height="60px"></asp:TextBox>
    </p>
    <p>
        Cirurgias
        <br />
        <asp:TextBox ID="txtCirurgias" runat="server" TextMode="MultiLine" Width="300px" Height="60px"></asp:TextBox>
    </p>
    <p>
        Observações
        <br />
        <asp:TextBox ID="txtObs" runat="server" TextMode="MultiLine" Width="300px" Height="60px"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar"></asp:Button>
    </p>
</asp:Content>
