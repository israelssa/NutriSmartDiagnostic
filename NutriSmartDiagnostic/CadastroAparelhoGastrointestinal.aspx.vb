Public Class CadastroAparelhoGastrointestinal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("idPaciente") Is Nothing Then
            If Session("Nutricionista") Is Nothing Then
                Response.Redirect("Default.aspx")
            Else
                Response.Redirect("PesquisarPacientes.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSalvar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSalvar.Click
        Dim util As Utilitario = New Utilitario()
        Dim aparelhoGastroIntestinal As DAONutriSmartDiagnostic.AparelhoGastroIntestinal = New DAONutriSmartDiagnostic.AparelhoGastroIntestinal()
        Dim aparelhoGastroIntestinais As BLLNutriSmartDiagnostic.AparelhoGastroIntestinal = New BLLNutriSmartDiagnostic.AparelhoGastroIntestinal()
        aparelhoGastroIntestinal.AspectoFeses = txtAspectoFeses.Text
        aparelhoGastroIntestinal.Caracteristicas_Vomitos = txtCaracVomitos.Text
        aparelhoGastroIntestinal.CaracteristicasDorAbdominal = txtCaracDorAbdominal.Text
        aparelhoGastroIntestinal.CorFeses = txtCorFeses.Text
        aparelhoGastroIntestinal.DensidadeFeses = txtDensidadeFeses.Text
        aparelhoGastroIntestinal.Disfagia = Convert.ToBoolean(ddlDisfagia.SelectedValue)
        aparelhoGastroIntestinal.DisfagiaAlimento = txtDisfagiaAlimento.Text
        aparelhoGastroIntestinal.DisfagiaTipo = txtDisfagiaTipo.Text
        aparelhoGastroIntestinal.Dispepsia = Convert.ToBoolean(ddlDispepsia.SelectedValue)
        aparelhoGastroIntestinal.DorAbdominal = Convert.ToBoolean(ddlDorAbdominal.SelectedValue)
        aparelhoGastroIntestinal.DorFeses = Convert.ToBoolean(ddlDorFeses.SelectedValue)
        aparelhoGastroIntestinal.Epigastragia = Convert.ToBoolean(ddlEpgastragia.SelectedValue)
        aparelhoGastroIntestinal.LocalDorAbdominal = txtLocalDorAbdominal.Text
        aparelhoGastroIntestinal.Náuseas = Convert.ToBoolean(ddlNauseas.SelectedValue)
        aparelhoGastroIntestinal.Odinofagia = Convert.ToBoolean(ddlOdinofagia.SelectedValue)
        aparelhoGastroIntestinal.Pirose = Convert.ToBoolean(ddlPirose.SelectedValue)
        aparelhoGastroIntestinal.Regurgitacao = Convert.ToBoolean(ddlRegurgitacao.SelectedValue)
        aparelhoGastroIntestinal.RitmoIntestinal = txtRitmoIntestinal.Text
        aparelhoGastroIntestinal.SangueFeses = Convert.ToBoolean(ddlSangueFeses.SelectedValue)
        aparelhoGastroIntestinal.UsoDeMedicamentos = txtMedicamentos.Text
        aparelhoGastroIntestinal.Vomitos = Convert.ToBoolean(ddlVomitos.SelectedValue)
        aparelhoGastroIntestinal.Vomitos_Horario = txthoraVomitos.Text
        aparelhoGastroIntestinal.idPaciente = Convert.ToInt32(Session("idPaciente"))
        aparelhoGastroIntestinal.idNutricionista = Convert.ToInt32(Session("idNutricionista"))

        Try
            aparelhoGastroIntestinais.InsertAparelhoGastroIntestinal(aparelhoGastroIntestinal)
            util.MessageBox(Me, "Inserido com Sucesso!")
            Response.Redirect("AcompanharPaciente.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir:" & ex.Message)
        End Try
    End Sub
End Class