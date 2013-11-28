<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastroAparelhoGastrointestinal.aspx.vb" Inherits="NutriSmartDiagnostic.CadastroAparelhoGastrointestinal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Cadastro de Características do Aparelho GastroIntestinal</h2>
    <p>
        <table>
            <tr>
                <td valign="top">
                    Disfagia: </br>
                    <asp:DropDownList ID="ddlDisfagia" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td valign="top">
                    Disfagia Alimento: </br>
                    <asp:TextBox ID="txtDisfagiaAlimento" runat="server" Height="10px" ></asp:TextBox>
                </td>
                <td valign="top">
                    DisfagiaTipo: </br>
                    <asp:TextBox ID="txtDisfagiaTipo" runat="server" Height="10px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Odinofagia: </br>
                    <asp:DropDownList ID="ddlOdinofagia" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                    Dispepsia: </br>
                    <asp:DropDownList ID="ddlDispepsia" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Epigastragia: </br>
                    <asp:DropDownList ID="ddlEpgastragia" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Regurgitacao: </br>
                    <asp:DropDownList ID="ddlRegurgitacao" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Pirose: </br>
                    <asp:DropDownList ID="ddlPirose" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
               </td>
                <td>
                    Náuseas: </br>
                    <asp:DropDownList ID="ddlNauseas" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Vômitos: </br>
                    <asp:DropDownList ID="ddlVomitos" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td valign="top">
                    Horário dos Vômitos: </br>
                    <asp:TextBox ID="txthoraVomitos" runat="server" Width="56px" Height="10px"></asp:TextBox>
                </td>
                <td valign="top">
                    Características dos Vômitos: </br>
                    <asp:TextBox ID="txtCaracVomitos" runat="server" Height="10px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Dor Abdominal: </br>
                    <asp:DropDownList ID="ddlDorAbdominal" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td valign="top">
                    Local da Dor Abdominal: </br>
                    <asp:TextBox ID="txtLocalDorAbdominal" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td valign="top">
                    Caract. Dor Abdominal:
                    <br />
                    <asp:TextBox ID="txtCaracDorAbdominal" runat="server" Height="10px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Ritmo Intestinal: </br>
                    <asp:TextBox ID="txtRitmoIntestinal" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td valign="top">
                    Aspecto das Feses: </br>
                    <asp:TextBox ID="txtAspectoFeses" runat="server" Height="10px" ></asp:TextBox>
                </td>
                <td valign="top">
                    Cor das Feses: </br>
                    <asp:TextBox ID="txtCorFeses" runat="server" Height="10px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Densidade das Feses:
                    <br />
                    <asp:TextBox ID="txtDensidadeFeses" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    Dor Feses:
                    <br />
                    <asp:DropDownList ID="ddlDorFeses" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Sangue Feses:
                    <br />
                    <asp:DropDownList ID="ddlSangueFeses" runat="server">
                        <asp:ListItem Value="False">Não</asp:ListItem>
                        <asp:ListItem Value="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    Uso De Medicamentos:
                    <br />
                    <asp:TextBox ID="txtMedicamentos" runat="server"  Width="442px" Height="26px" 
                        TextMode="MultiLine"></asp:TextBox>
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
