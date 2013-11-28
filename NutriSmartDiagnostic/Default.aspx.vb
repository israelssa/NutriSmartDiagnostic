Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnEntrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnEntrar.Click
        Dim usuarios As BLLNutriSmartDiagnostic.Usuario = New BLLNutriSmartDiagnostic.Usuario()
        Dim usuario As DAONutriSmartDiagnostic.Usuario = Nothing
        If (txtSenha.Text <> "" And txtLogin.Text <> "") Then
            usuario = usuarios.Autentication(txtLogin.Text, txtSenha.Text)
            If Not usuario Is Nothing Then
                If usuario.Tipo Then
                    Dim nutricionistas As BLLNutriSmartDiagnostic.Nutricionista = New BLLNutriSmartDiagnostic.Nutricionista()
                    Dim nutricionista As DAONutriSmartDiagnostic.Nutricionista = nutricionistas.getNutricionistaByIdUser(usuario.idUsuario)
                    Session("NomeUsuario") = "Bem vindo(a) Dr(a) " + nutricionista.Nome
                    Session("Nutricionista") = nutricionista
                    Session("idNutricionista") = nutricionista.idNutricionista
                    Response.Redirect("PesquisarPacientes.aspx")
                Else
                    Dim Pacientes As BLLNutriSmartDiagnostic.Pacientes = New BLLNutriSmartDiagnostic.Pacientes()
                    Dim paciente As DAONutriSmartDiagnostic.Paciente = Pacientes.GetPacienteByIdUser(usuario.idUsuario)
                    Session("NomeUsuario") = "Bem vindo(a) Dr(a) " + paciente.Nome
                    Session("NomePaciente") = paciente.Nome
                    Session("Paciente") = paciente
                    Session("idPaciente") = paciente.idPaciente
                    Response.Redirect("AcompanharPaciente.aspx")
                End If
            End If
        End If
    End Sub
End Class