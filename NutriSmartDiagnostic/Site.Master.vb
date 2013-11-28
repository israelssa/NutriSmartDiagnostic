Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("NomeUsuario") Is Nothing Then
            lblNomeUsuario.Text = Session("NomeUsuario").ToString()
            lblNomeUsuario.Visible = True
            lkbSair.Visible = True
            Menu1.Visible = True
        End If

    End Sub

    Protected Sub lkbSair_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lkbSair.Click
        Session("NomeUsuario") = Nothing
        Session("Nutricionista") = Nothing
        Session("Paciente") = Nothing
        lblNomeUsuario.Text = ""
        lblNomeUsuario.Visible = False
        lkbSair.Visible = False
        Menu1.Visible = False
        Response.Redirect("Default.aspx")
    End Sub

End Class