Imports System.IO

Partial Class frameset_infobar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Me.lblUsername.Text = "[" & SessionState.FullName & "(" & SessionState.Rolename & ")]"
        Me.lblUsername.Text = StateBag.SessionState.Firstname & " " & StateBag.SessionState.Surname & " [Role: " & StateBag.SessionState.Rolename & "; Username: " & StateBag.SessionState.UserName & "]" '; Address:" & StateBag.SessionState.BillingAddress & "]"
        Me.lblDateTime.Text = Now.ToLongDateString '& " " & Now.ToLongTimeString
        Me.lblDepartment.Text = StateBag.SessionState.Department
    End Sub
End Class
