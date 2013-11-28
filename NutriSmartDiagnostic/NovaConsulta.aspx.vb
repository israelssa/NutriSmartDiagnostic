Public Class NovaConsulta
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
        Dim consultas As BLLNutriSmartDiagnostic.Consulta = New BLLNutriSmartDiagnostic.Consulta()
        Dim consulta As DAONutriSmartDiagnostic.Consulta = New DAONutriSmartDiagnostic.Consulta()

        consulta.idPaciente = Session("idPaciente")
        consulta.idNutricionista = Session("idNutricionista")
        consulta.Observacao = txtObservacoes.Text
        consulta.Data = Date.Now

        Try
            Session("idConsulta") = consultas.InsertConsulta(consulta)
            util.MessageBox(Me, "Consulta inserido com Sucesso!")
            Response.Redirect("CadastroMedidasAntropometricas.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir Consulta:" & ex.Message)
        End Try
    End Sub
End Class