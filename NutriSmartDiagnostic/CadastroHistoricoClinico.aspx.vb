Public Class CadastroHistoricoClinico
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
        Dim HistoricoClinico As DAONutriSmartDiagnostic.HistoricoClinico = New DAONutriSmartDiagnostic.HistoricoClinico()
        Dim HistoricosClinico As BLLNutriSmartDiagnostic.HistoricoClinico = New BLLNutriSmartDiagnostic.HistoricoClinico()
        HistoricoClinico.Historico = txtHistorico.Text
        HistoricoClinico.Patologias = txtPatologias.Text
        HistoricoClinico.Cirurgias = txtCirurgias.Text
        HistoricoClinico.Observacoes = txtPatologias.Text
        HistoricoClinico.idPaciente = Convert.ToInt32(Session("idPaciente"))
        HistoricoClinico.idNutricionista = Convert.ToInt32(Session("idNutricionista"))

        Try
            HistoricosClinico.InsertHistoricoClinico(HistoricoClinico)
            util.MessageBox(Me, "Inserido com Sucesso!")
            Response.Redirect("AcompanharPaciente.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir:" & ex.Message)
        End Try
    End Sub
End Class