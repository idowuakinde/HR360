
Partial Class logoff
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("default.aspx")
    End Sub
End Class
