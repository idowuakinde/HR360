
Partial Class modules_system_setups_metadata_manage_customers_notify
    Inherits System.Web.UI.Page

    Public serial As Int32 = 1
    Public total As Double = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            gvCustomers.Visible = False
            btnSend.Visible = False
        Else
            gvCustomers.Visible = True
            btnSend.Visible = True
        End If
    End Sub

    Protected Sub gvCustomers_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvCustomers.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            serial += 1
            Dim rowView As System.Data.DataRowView = CType(e.Row.DataItem, System.Data.DataRowView)
            total += rowView("currentBal").ToString
        End If
    End Sub
End Class
