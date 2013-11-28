<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="NovaConsulta.aspx.vb" Inherits="NutriSmartDiagnostic.NovaConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Nova Consulta</h2>
    <p>Paciente:
        <asp:Label ID="lblNomePaciente" runat="server" Text="Label"></asp:Label>
    </p>
    <p>Observações:
    <br />
    <asp:TextBox ID="txtObservacoes" runat="server" Height="51px" TextMode="MultiLine" 
            Width="529px"></asp:TextBox>
    </p>
    <p>
        
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
        
    </p>

</asp:Content>
