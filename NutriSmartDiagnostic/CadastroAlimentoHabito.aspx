<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastroAlimentoHabito.aspx.vb" Inherits="NutriSmartDiagnostic.CadastroAlimentoHabito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Cadastro de Alimentos e Hábitos</h2>
    <p>
        <table>
            <tr>
                <td colspan="3">
                    Alimentos que gosta:<br />
                    <asp:TextBox ID="txtAlimentosGosta" runat="server" TextMode="MultiLine" 
                        Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    Alimentos que não gosta:<br />
                    <asp:TextBox ID="txtAlimentoNaoGosta" runat="server" TextMode="MultiLine" 
                        Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Horas de sono por dia:<br />
                    <asp:TextBox ID="txtHoraSonoDia" runat="server" Height="10px" Width="56px"></asp:TextBox>
                </td>
                <td>
                    Etilismo:<br />
                    <asp:DropDownList ID="ddlEtilismno" runat="server">
                        <asp:ListItem Value="Nao">Não</asp:ListItem>
                        <asp:ListItem>Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Tabagistmo:<br />
                    <asp:DropDownList ID="ddlTabagismo" runat="server">
                        <asp:ListItem Value="Nao">Não</asp:ListItem>
                        <asp:ListItem>Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
                </td>
            </tr>
        </table>
    </p>
    
    
    
    
    
    
</asp:Content>
