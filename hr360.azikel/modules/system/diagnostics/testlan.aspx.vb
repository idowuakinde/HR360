
Partial Class modules_system_diagnostics_testlan
    Inherits System.Web.UI.Page

    Protected Sub btnLanTest_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLanTest.Click
        Dim ret() As String = {"", "", "", "", "", ""}

        Miscellaneous.PingSender.Send(System.Configuration.ConfigurationManager.AppSettings("Diagnostics_IP_Local"), ret)
        Select Case ret(0).ToUpper
            Case "SUCCESS"
                Me.lblMessageHeaderSuccess.Visible = True
                Me.lblMessageHeaderFailure.Visible = False
                Me.lblHostname.Text = ret(1)
                Me.lblRoundTripTime.Text = ret(2)
                Me.lblTimeToLive.Text = ret(3)
                Me.lblDontFragment.Text = ret(4)
                Me.lblBufferSize.Text = ret(5) & " bytes"
            Case Else
                Me.lblMessageHeaderSuccess.Visible = False
                Me.lblMessageHeaderFailure.Visible = True
                Me.lblHostname.Text = ret(1)
        End Select
    End Sub
End Class
