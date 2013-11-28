<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AvaliacaoClinica.aspx.vb" Inherits="NutriSmartDiagnostic.AvaliacaoClinica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Acompanhamento Clínico</h2>
    <p>Alimentos e Hábitos:
        <asp:LinkButton ID="lkbAlimentos" runat="server" 
            PostBackUrl="~/CadastroAlimentoHabito.aspx">Cadastrar</asp:LinkButton>
    </p>
    <p>
        <asp:GridView ID="gdvAlimentosHabitos" runat="server" 
            DataSourceID="ldsAlimentosHabitos" AutoGenerateColumns="False" 
            EmptyDataText="Não há dados cadastrados." CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="idEntrevistaPaciente" 
                    HeaderText="idEntrevistaPaciente" SortExpression="idEntrevistaPaciente" 
                    Visible="False" />
                <asp:BoundField DataField="idPaciente" HeaderText="idPaciente" 
                    SortExpression="idPaciente" Visible="False" />
                <asp:BoundField DataField="idNutricionista" HeaderText="idNutricionista" 
                    SortExpression="idNutricionista" Visible="False" />
                <asp:BoundField DataField="AlimentosNaoGosta" 
                    HeaderText="Alimentos que não gosta" SortExpression="AlimentosNaoGosta" />
                <asp:BoundField DataField="AlimentosGosta" HeaderText="Alimentos que gosta" 
                    SortExpression="AlimentosGosta" />
                <asp:BoundField DataField="SonoHoras" HeaderText="Horas de sono por dia" 
                    SortExpression="SonoHoras" />
                <asp:BoundField DataField="Etilismo" HeaderText="Etilismo" 
                    SortExpression="Etilismo" />
                <asp:BoundField DataField="Tabagistmo" HeaderText="Tabagistmo" 
                    SortExpression="Tabagistmo" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ldsAlimentosHabitos" runat="server" 
            ContextTypeName="DAONutriSmartDiagnostic.DBNutriSmartDiagnosticsEntities" 
            EntityTypeName="" TableName="EntrevistaPaciente" 
            Where="idPaciente == @idPaciente">
            <WhereParameters>
                <asp:SessionParameter Name="idPaciente" SessionField="idPaciente" 
                    Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </p>
    <p>
        Aparelho Gastrointestinal:
        <asp:HyperLink ID="lkbAparehoGastrointestinal" runat="server" 
            NavigateUrl="~/CadastroAparelhoGastrointestinal.aspx">Cadastrar</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="gdvAparelhoGastro" runat="server" 
            DataSourceID="ldsAparelhoGastro" AutoGenerateColumns="False" 
            EmptyDataText="Não há dados cadastrados." CssClass="mGrid">
            <Columns>
                <asp:CheckBoxField DataField="Disfagia" HeaderText="Disfagia" 
                    SortExpression="Disfagia" />
                <asp:BoundField DataField="DisfagiaTipo" HeaderText="Tipo da Disfagia" 
                    SortExpression="DisfagiaTipo" />
                <asp:CheckBoxField DataField="Odinofagia" HeaderText="Odinofagia" 
                    SortExpression="Odinofagia" />
                <asp:CheckBoxField DataField="Dispepsia" HeaderText="Dispepsia" 
                    SortExpression="Dispepsia" />
                <asp:CheckBoxField DataField="Epigastragia" HeaderText="Epigastragia" 
                    SortExpression="Epigastragia" />
                <asp:CheckBoxField DataField="Regurgitacao" HeaderText="Regurgitação" 
                    SortExpression="Regurgitacao" />
                <asp:CheckBoxField DataField="Pirose" HeaderText="Pirose" 
                    SortExpression="Pirose" />
                <asp:CheckBoxField DataField="Náuseas" HeaderText="Náuseas" 
                    SortExpression="Náuseas" />
                <asp:CheckBoxField DataField="Vomitos" HeaderText="Vômitos" 
                    SortExpression="Vomitos" />
                <asp:CheckBoxField DataField="DorAbdominal" HeaderText="Dor Abdominal" 
                    SortExpression="DorAbdominal" />
                <asp:BoundField DataField="UsoDeMedicamentos" HeaderText="Uso De Medicamentos" 
                    SortExpression="UsoDeMedicamentos" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ldsAparelhoGastro" runat="server" 
            ContextTypeName="DAONutriSmartDiagnostic.DBNutriSmartDiagnosticsEntities" 
            EntityTypeName="" TableName="AparelhoGastroIntestinal" 
            Where="idPaciente == @idPaciente &amp;&amp; idPaciente == @idPaciente1">
            <WhereParameters>
                <asp:SessionParameter Name="idPaciente" SessionField="idPaciente" 
                    Type="Int32" />
                <asp:SessionParameter Name="idPaciente1" SessionField="idPaciente" 
                    Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </p>
    <p>Consultas Realizadas: <asp:LinkButton ID="lkbConsultas" runat="server" 
            PostBackUrl="~/NovaConsulta.aspx">Nova Consulta</asp:LinkButton></p>
    <p>
        <asp:GridView ID="gdvConsulta" runat="server" 
            DataSourceID="ldsConsultas" AutoGenerateColumns="False" 
            EmptyDataText="Não há dados cadastrados." CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="idConsulta" HeaderText="idConsulta" ReadOnly="True" 
                    SortExpression="idConsulta" Visible="false" />
                <asp:BoundField DataField="idPaciente" HeaderText="idPaciente" ReadOnly="True" 
                    SortExpression="idPaciente" />
                <asp:BoundField DataField="idNutricionista" HeaderText="idNutricionista" 
                    ReadOnly="True" SortExpression="idNutricionista"  Visible="false"/>
                <asp:BoundField DataField="Data" HeaderText="Data da Consulta" ReadOnly="True" 
                    SortExpression="Data" DataFormatString="{0:d}"/>
                <asp:BoundField DataField="Observacao" HeaderText="Observação" ReadOnly="True" 
                    SortExpression="Observacao" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ldsConsultas" runat="server" 
            ContextTypeName="DAONutriSmartDiagnostic.DBNutriSmartDiagnosticsEntities" 
            EntityTypeName="" 
            Select="new (idConsulta, idPaciente, idNutricionista, Data, Observacao)" 
            TableName="Consulta" Where="idPaciente == @idPaciente">
            <WhereParameters>
                <asp:SessionParameter Name="idPaciente" SessionField="idPaciente" 
                    Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </p>
    <p>Histórico de Saúde: <asp:LinkButton ID="lkbHistorico" runat="server" 
            PostBackUrl="~/CadastroHistoricoClinico.aspx">Cadastrar</asp:LinkButton></p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            EmptyDataText="Não há dados cadastrados." DataSourceID="ldsHistoricoSaude" 
            CssClass="mGrid">
            <Columns>
                <asp:BoundField DataField="Historico" 
                    HeaderText="Histórico Familiar" SortExpression="Historico" ReadOnly="True" />
                <asp:BoundField DataField="Patologias" HeaderText="Patologias" 
                    SortExpression="Patologias" ReadOnly="True" />
                <asp:BoundField DataField="Cirurgias" HeaderText="Cirurgias" 
                    SortExpression="Cirurgias" ReadOnly="True" />
                <asp:BoundField DataField="Observacoes" 
                    HeaderText="Observações" SortExpression="Observacoes" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ldsHistoricoSaude" runat="server" 
            ContextTypeName="DAONutriSmartDiagnostic.DBNutriSmartDiagnosticsEntities" 
            EntityTypeName="" 
            Select="new (idHistoricoClinico, idPaciente, idNutricionista, Historico, Patologias, Cirurgias, Observacoes)" 
            TableName="HistoricoClinico" Where="idPaciente == @idPaciente">
            <WhereParameters>
                <asp:SessionParameter Name="idPaciente" SessionField="idPaciente" 
                    Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </p>
</asp:Content>
