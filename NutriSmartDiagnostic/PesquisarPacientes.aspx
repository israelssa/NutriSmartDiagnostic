<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="PesquisarPacientes.aspx.vb" Inherits="NutriSmartDiagnostic.PesquisarPacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Pesquisar Pacientes</h2>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/CadastroPaciente.aspx">Novo Paciente</asp:LinkButton>
    </p>
    <p>Nome do Paciente: </br> 
        <asp:TextBox ID="txtNomePaciente" runat="server" 
            Width="308px" Height="10px"></asp:TextBox>
    &nbsp;<asp:Button ID="btnPesquisar" runat="server" Height="20px" Text="Pesquisar" 
            Width="80px" />
    </p>
<p>
    <asp:GridView ID="gdvPacientes" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
    DataKeyNames="idPaciente,Nome" 
        EmptyDataText="Não existe dados para esta consulta." CssClass="mGrid">
        <Columns>
            <asp:CommandField SelectText="[Selecionar]" ShowSelectButton="True" />
            <asp:BoundField DataField="idPaciente" HeaderText="idPaciente" ReadOnly="True" 
                 Visible="False" />
            <asp:BoundField DataField="Nome" HeaderText="Nome"  />
            <asp:BoundField DataField="Tel1" HeaderText="Telefone"  />
            <asp:BoundField DataField="Email" HeaderText="E-mail"  />
            <asp:BoundField DataField="Profissao" HeaderText="Profissão" 
                />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" />
            <asp:BoundField DataField="DataNasc" DataFormatString="{0:d}" 
                HeaderText="Data de Nascimento" />
        </Columns>
    </asp:GridView>
    </p>
    </asp:Content>
