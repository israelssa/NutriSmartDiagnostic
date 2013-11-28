<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CadastroPaciente.aspx.vb" Inherits="NutriSmartDiagnostic.CadastroPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Cadastrar Pacientes</h2>
    <p>
        <table>
            <tr>
                <td class="style1" colspan="3">
                    Nome:</br>
                    <asp:TextBox ID="txtNome" runat="server" Height="10px" Width="354px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Telefone Celular:<br />
                    <asp:TextBox ID="txtTel1" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    Telefone Residencial:</br>
                    <asp:TextBox ID="txtTel2" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Telefone Recado:<br />
                    <asp:TextBox ID="txtTel3" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    Sexo:</br>      
                    <asp:DropDownList ID="ddlSexo" runat="server" Height="16px" Width="159px">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Data de Nascimento:<br />
                    <asp:TextBox ID="txtDataNasc" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    Profissão:<br />
                    <asp:TextBox ID="txtProfissao" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Jornada de Trabalho:<br />
                    <asp:TextBox ID="txtJornadaTrabalho" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    E-mail:<br />
                    <asp:TextBox ID="txtEmail" runat="server" Height="10px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    Condição de Trabalho:<br />
                    <asp:TextBox ID="txtCondTrabalho" runat="server" Height="10px" Width="354px"></asp:TextBox>
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
