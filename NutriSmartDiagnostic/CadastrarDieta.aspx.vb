Public Class CadastrarDieta
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
        Dim Dieta As DAONutriSmartDiagnostic.Dieta = New DAONutriSmartDiagnostic.Dieta()
        Dim Dietas As BLLNutriSmartDiagnostic.Dieta = New BLLNutriSmartDiagnostic.Dieta()
        Dieta.idPaciente = Convert.ToInt32(Session("idPaciente"))
        Dieta.inicio = txtDe.Text
        Dieta.termino = txtAte.Text
        Dieta.Descricao = txtDieta.Text
        Try
            Dietas.InsertDieta(Dieta)
            util.MessageBox(Me, "Inserido com Sucesso!")
            Response.Redirect("AcompanharPaciente.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir:" & ex.Message)
        End Try
    End Sub
End Class