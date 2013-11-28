Public Class CadastroAlimentoHabito
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
        Dim entrevistaPaciente As DAONutriSmartDiagnostic.EntrevistaPaciente = New DAONutriSmartDiagnostic.EntrevistaPaciente()
        Dim entrevistaPacientes As BLLNutriSmartDiagnostic.EntrevistaPaciente = New BLLNutriSmartDiagnostic.EntrevistaPaciente()
        entrevistaPaciente.idNutricionista = Convert.ToInt32(Session("idNutricionista"))
        entrevistaPaciente.idPaciente = Convert.ToInt32(Session("idPaciente"))
        entrevistaPaciente.AlimentosGosta = txtAlimentosGosta.Text
        entrevistaPaciente.AlimentosNaoGosta = txtAlimentoNaoGosta.Text
        entrevistaPaciente.Etilismo = ddlEtilismno.SelectedValue.ToString()
        entrevistaPaciente.SonoHoras = txtHoraSonoDia.Text
        entrevistaPaciente.Tabagistmo = ddlTabagismo.SelectedValue
        Try
            entrevistaPacientes.InsertEntrevistaPaciente(entrevistaPaciente)
            Util.MessageBox(Me, "Inserido com Sucesso!")
            Response.Redirect("AcompanharPaciente.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir:" & ex.Message)
        End Try
    End Sub
End Class