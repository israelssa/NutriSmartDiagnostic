Public Class Utilitario

    Sub MessageBox(ByVal page As Page, ByVal mensagem As String)
        ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('" + mensagem + "');", True)
    End Sub

End Class
