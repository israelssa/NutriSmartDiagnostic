<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AcompanharPaciente.aspx.vb" Inherits="NutriSmartDiagnostic.AcompanharPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Paciente : 
        <asp:Label ID="lblPaciente" runat="server"></asp:Label>
    </h2>
    <p> 
        <asp:LinkButton ID="lkbAvaliacaoClinica" runat="server" 
            PostBackUrl="~/AvaliacaoClinica.aspx">Avaliação Clínica</asp:LinkButton>
    </p>
    <p> 
        <asp:LinkButton ID="lkbProgressao" runat="server" 
            PostBackUrl="~/ProgressoPaciente.aspx">Progressão do Tratamento</asp:LinkButton>
    </p>
    <p> 
        <asp:LinkButton ID="lkbDietaPaciente" runat="server" 
            PostBackUrl="~/AcompanhamentoDieta.aspx">Dieta do Paciente</asp:LinkButton>
    </p>
    <p> 
        <asp:LinkButton ID="lkbConsultasRealizadas" runat="server" 
            PostBackUrl="~/NovaConsulta.aspx">Nova Consulta</asp:LinkButton>
    </p>
    <p> 
        &nbsp;</p>
</asp:Content>
