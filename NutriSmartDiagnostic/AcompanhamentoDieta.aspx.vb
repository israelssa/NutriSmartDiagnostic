Public Class AcompanhamentoDieta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("idPaciente") Is Nothing Then
            If Session("Nutricionista") Is Nothing Then
                Response.Redirect("Default.aspx")
            Else
                Response.Redirect("PesquisarPacientes.aspx")
            End If
        Else
            If Session("Nutricionista") Is Nothing Then
                lkbDieta.Visible = False
            End If
        End If
    End Sub

End Class