
Partial Class modules_hr_input_payroll
    Inherits System.Web.UI.Page

    'Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
    '    If Me.DropDownList4.SelectedValue <> "0" Then
    '        Me.gvUsers.Visible = True
    '    Else
    '        Me.gvUsers.Visible = False
    '    End If
    'End Sub

    Protected Sub Page_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        Me.gvUsers.DataBind()
    End Sub
End Class
