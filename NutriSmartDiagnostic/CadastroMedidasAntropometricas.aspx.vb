Public Class CadastroMedidasAntropometricas
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
        Dim medidas As BLLNutriSmartDiagnostic.MedidasAntropometricas = New BLLNutriSmartDiagnostic.MedidasAntropometricas()
        Dim medida As DAONutriSmartDiagnostic.MedidasAntropometricas = New DAONutriSmartDiagnostic.MedidasAntropometricas()

        medida.idConsulta = Session("idConsulta")
        medida.PesoAtual = Decimal.Parse(txPesoAtual.Text)
        medida.PesoDesejado = Decimal.Parse(txtPesoDesejado.Text)
        medida.PesoHabitual = Decimal.Parse(txtPesoHabitual.Text)
        medida.Altura = Decimal.Parse(txtAltura.Text)
        medida.PressaoArterial = Decimal.Parse(txtPressaoArterial.Text)
        medida.Triceps = Decimal.Parse(txtTriceps.Text)
        medida.Subescapular = Decimal.Parse(txtSubescapular.Text)
        medida.Biceps = Decimal.Parse(txtBiceps.Text)
        medida.Coxa = Decimal.Parse(txtCoxa.Text)
        medida.SupraIliaca = Decimal.Parse(txtSupraIliaca.Text)
        medida.Abdomen = Decimal.Parse(txtAbdomen.Text)
        medida.Punho = Decimal.Parse(txtPunho.Text)
        medida.Braco = Decimal.Parse(txtBraco.Text)
        medida.Abdominal = Decimal.Parse(txtAbdominal.Text)
        medida.Cintura = Decimal.Parse(txtCintura.Text)
        medida.Quadril = Decimal.Parse(txtQuadril.Text)
        medida.PercentualGordura = Decimal.Parse(txtPercentualGordura.Text)
        medida.PesoMagro = Decimal.Parse(txtPesoMagro.Text)
        medida.PesoGordo = Decimal.Parse(txtPesoGordo.Text)
        medida.PesoMuscular = Decimal.Parse(txtPesoMuscular.Text)
        medida.TotalAgua = Decimal.Parse(txtTotalAgua.Text)

        Try
            medidas.InsertMedidasAntropometricas(medida)
            util.MessageBox(Me, "Medidas inseridas com Sucesso!")
            Response.Redirect("AvaliacaoClinica.aspx")
        Catch ex As Exception
            util.MessageBox(Me, "Erro ao Inserir Medidas:" & ex.Message)
        End Try
    End Sub
End Class