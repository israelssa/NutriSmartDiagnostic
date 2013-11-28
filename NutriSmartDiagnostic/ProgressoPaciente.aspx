<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProgressoPaciente.aspx.vb" Inherits="NutriSmartDiagnostic.ProgressoPaciente" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Progressão de Medidas Antropométricas</h2>
    <p> Peso </p>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
        Width="493px">
        <series>
            <asp:Series ChartType="Line" Name="Series1" XValueMember="Data" 
                YValueMembers="PesoAtual">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DBNutriSmartDiagnosticsConnectionString %>" 
    
        
        SelectCommand="SELECT [Data], [PesoAtual] FROM [ConsultasMedidas] WHERE ([idPaciente] = @idPaciente)">
        <SelectParameters>
            <asp:SessionParameter Name="idPaciente" SessionField="idPaciente" 
                Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
