
Partial Class modules_hr_photo_zoom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim guid As String = Request.QueryString("a")

        Me.imgPassport.ImageUrl = "~/_uploads/photos/photo_" & guid & ".jpg"
    End Sub
End Class
