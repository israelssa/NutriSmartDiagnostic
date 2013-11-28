Public Class CadastroPaciente
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Nutricionista") Is Nothing Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub btnSalvar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSalvar.Click
        Dim util As Utilitario = New Utilitario()
        Dim pacientes As BLLNutriSmartDiagnostic.Pacientes = New BLLNutriSmartDiagnostic.Pacientes()
        Dim paciente As DAONutriSmartDiagnostic.Paciente = New DAONutriSmartDiagnostic.Paciente()
        paciente.Nome = txtNome.Text
        paciente.Profissao = txtProfissao.Text
        paciente.Sexo = ddlSexo.SelectedValue
        paciente.Email = txtEmail.Text
        paciente.Tel1 = txtTel1.Text
        paciente.Tel2 = txtTel2.Text
        paciente.Tel3 = txtTel3.Text
        If txtDataNasc.Text <> "" Then
            paciente.DataNasc = Convert.ToDateTime(txtDataNasc.Text)
        End If
        paciente.CondicaoTrabalho = txtCondTrabalho.Text
        Try
            Session("idPaciente") = pacientes.InsertPaciente(paciente)
            util.MessageBox(Me, "Paciente inserido com Sucesso!")
            Response.Redirect("PesquisarPacientes.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir Paciente:" & ex.Message)
        End Try
    End Sub
End Class