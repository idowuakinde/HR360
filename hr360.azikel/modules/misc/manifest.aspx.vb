
Partial Class modules_misc_manifest
    Inherits System.Web.UI.Page

    Dim i As Int32

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            For i = 0 To Now.Year - 2000
                Me.ddlDateYear.Items.Add(2000 + i)
                Me.ddlSignatureDateYear.Items.Add(2000 + i)
            Next
            For i = 1 To 31
                'Me.ddlDateDay.Items.Add(Common.PadNumber(i.ToString, 2))
                Me.ddlDateDay.Items.Add(New System.Web.UI.WebControls.ListItem(Common.PadNumber(i.ToString, 2), i))
                Me.ddlSignatureDateDay.Items.Add(New System.Web.UI.WebControls.ListItem(Common.PadNumber(i.ToString, 2), i))
            Next
            For i = 0 To 23
                Me.ddlTimeHour.Items.Add(New System.Web.UI.WebControls.ListItem(Common.PadNumber(i.ToString, 2), i))
            Next
            For i = 0 To 59
                Me.ddlTimeMinute.Items.Add(New System.Web.UI.WebControls.ListItem(Common.PadNumber(i.ToString, 2), i))
            Next

            Me.ddlDateYear.SelectedValue = Now.Year
            Me.ddlDateMonth.SelectedValue = Now.Month
            Me.ddlDateDay.SelectedValue = Now.Day
            Me.ddlTimeHour.SelectedValue = Now.Hour
            Me.ddlTimeMinute.SelectedValue = Now.Minute
            Me.ddlSignatureDateYear.SelectedValue = Now.Year
            Me.ddlSignatureDateMonth.SelectedValue = Now.Month
            Me.ddlSignatureDateDay.SelectedValue = Now.Day
        End If
    End Sub
End Class
