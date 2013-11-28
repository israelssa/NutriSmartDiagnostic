<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AcompanhamentoDieta.aspx.vb" Inherits="NutriSmartDiagnostic.AcompanhamentoDieta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Acompanhamento de Dieta</h2>
    <br />
 <asp:LinkButton ID="lkbDieta" runat="server" PostBackUrl="~/CadastrarDieta.aspx">Nova Dieta</asp:LinkButton>
    <br />
    <br />
    <p> Dieta</p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="idDieta" DataSourceID="edsDieta" 
            EmptyDataText="Nenhuma dieta cadastrada." CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="Descricao" HeaderText="Dieta" 
                    SortExpression="Descricao" />
                <asp:BoundField DataField="inicio" HeaderText="Início" 
                    SortExpression="inicio" DataFormatString="{0:d}" />
                <asp:BoundField DataField="termino" HeaderText="Término" 
                    SortExpression="termino" DataFormatString="{0:d}" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="edsDieta" runat="server" 
            ConnectionString="name=DBNutriSmartDiagnosticsEntities" 
            DefaultContainerName="DBNutriSmartDiagnosticsEntities" EnableDelete="True" 
            EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="Dieta" EntityTypeFilter="Dieta">
        </asp:EntityDataSource>
    </p>

</asp:Content>

