<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastroMedidasAntropometricas.aspx.vb" Inherits="NutriSmartDiagnostic.CadastroMedidasAntropometricas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Cadastro de Medidas Antropométricas</h2>
<p>
    <table>
        <tr>
            <td colspan="3" 
                style="background-color: #8D8D8D; color: #FFFFFF; font-size: small; font-weight: bold; font-family: Verdana;">
                Peso</td>
        </tr>
        <tr>
            <td>
                Peso Atual:
                <br />
                <asp:TextBox ID="txPesoAtual" runat="server"></asp:TextBox></td>
            <td>
                Peso Desejado:
                <br />
                <asp:TextBox ID="txtPesoDesejado" runat="server"></asp:TextBox>
            </td>
            <td>
                Peso Habitual:
                <br />
                <asp:TextBox ID="txtPesoHabitual" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                style="background-color: #8D8D8D; color: #FFFFFF; font-size: small; font-weight: bold; font-family: Verdana;">
                Altura</td>
        </tr>
        <tr>
            <td>
                Altura:
                <br />
                <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
            </td>
            <td>
                Pressão Arterial:
                <br />
                <asp:TextBox ID="txtPressaoArterial" runat="server"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                style="background-color: #8D8D8D; color: #FFFFFF; font-size: small; font-weight: bold; font-family: Verdana;">
                
                Dobras Cutâneas</td>
        </tr>
        <tr>
            <td>
                
                Tríceps:
                <br />
                <asp:TextBox ID="txtTriceps" runat="server"></asp:TextBox>
                
            </td>
            <td>
                
                Subescapular:
                <br />
                <asp:TextBox ID="txtSubescapular" runat="server"></asp:TextBox>
                
            </td>
            <td style="margin-left: 80px">
                Bíceps:
                <br />
                <asp:TextBox ID="txtBiceps" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                Coxa:
                <br />
                <asp:TextBox ID="txtCoxa" runat="server"></asp:TextBox>
            </td>
            <td>
                
                Supra-Ilíaca:
                <br />
                <asp:TextBox ID="txtSupraIliaca" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                Abdomen:
                <br />
                <asp:TextBox ID="txtAbdomen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                style="background-color: #8D8D8D; color: #FFFFFF; font-size: small; font-weight: bold; font-family: Verdana;">
                
                Perímetros</td>
        </tr>
        <tr>
            <td>
                
                Punho:
                <br />
                <asp:TextBox ID="txtPunho" runat="server"></asp:TextBox>
            </td>
            <td>
                
                Braco:
                <br />
                <asp:TextBox ID="txtBraco" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                Abdominal:
                <br />
                <asp:TextBox ID="txtAbdominal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                Cintura:
                <br />
                <asp:TextBox ID="txtCintura" runat="server"></asp:TextBox>
            </td>
            <td>
                
                Quadril:
                <br />
                <asp:TextBox ID="txtQuadril" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" 
                style="background-color: #8D8D8D; color: #FFFFFF; font-size: small; font-weight: bold; font-family: Verdana;">
                
                Bioimpedância</td>
        </tr>
        <tr>
            <td>
                
                Percentual de Gordura:
                <br />
                <asp:TextBox ID="txtPercentualGordura" runat="server"></asp:TextBox>
            </td>
            <td>
                
                Peso Magro:
                <br />
                <asp:TextBox ID="txtPesoMagro" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                Peso Gordo:
                <br />
                <asp:TextBox ID="txtPesoGordo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                Peso Muscular:
                <br />
                <asp:TextBox ID="txtPesoMuscular" runat="server"></asp:TextBox>
            </td>
            <td>
                
                Total de Água:
                <br />
                <asp:TextBox ID="txtTotalAgua" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
            </td>
        </tr>
    </table>
    </p>

</asp:Content>
