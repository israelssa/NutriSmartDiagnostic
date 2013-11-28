Public Class PesquisarPacientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Nutricionista") Is Nothing Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub btnPesquisar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPesquisar.Click
        Dim pacientes As BLLNutriSmartDiagnostic.Pacientes = New BLLNutriSmartDiagnostic.Pacientes()
        If txtNomePaciente.Text = "" Then
            gdvPacientes.DataSource = pacientes.GetAllPacientes()
            gdvPacientes.DataBind()
        Else
            gdvPacientes.DataSource = pacientes.GetPacientesByName(txtNomePaciente.Text)
            gdvPacientes.DataBind()
        End If
    End Sub

    Protected Sub gdvPacientes_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles gdvPacientes.SelectedIndexChanged
        Dim selectedRowIndex As Integer
        selectedRowIndex = gdvPacientes.SelectedIndex

        Dim row As GridViewRow = gdvPacientes.Rows(selectedRowIndex)
        Session("idPaciente") = gdvPacientes.DataKeys(selectedRowIndex).Item("idPaciente").ToString()
        Session("NomePaciente") = gdvPacientes.DataKeys(selectedRowIndex).Item("Nome").ToString()

        Response.Redirect("AcompanharPaciente.aspx")
    End Sub
End Class