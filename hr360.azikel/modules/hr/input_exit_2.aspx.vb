﻿
Partial Class modules_hr_input_exit_2
    Inherits System.Web.UI.Page
    Public gvDetail As GridView
    Public actionDate_year As DropDownList, actionDate_month As DropDownList, actionDate_day As DropDownList, actionDate_label As Label

    Protected Sub gvMaster_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvMaster.SelectedIndexChanged
        For Each gvRow As GridViewRow In gvMaster.Rows
            gvRow.FindControl("gvDetail").Visible = False
            gvRow.FindControl("lblAddNew").Visible = False
            gvRow.FindControl("DetailsView1").Visible = False
        Next
        dsSqlGetDetail.SelectParameters(0).DefaultValue = gvMaster.SelectedDataKey(0).ToString
        dsSqlGetDetail.DataBind()
        gvMaster.SelectedRow.FindControl("gvDetail").Visible = True
        gvMaster.SelectedRow.FindControl("lblAddNew").Visible = True
        gvMaster.SelectedRow.FindControl("DetailsView1").Visible = True
    End Sub

    Protected Sub DetailsViewItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs)
        gvDetail = gvMaster.Rows(gvMaster.SelectedIndex).FindControl("gvDetail")
        gvDetail.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'action date
        actionDate_year = CType(CType(gvMaster.Rows(gvMaster.SelectedIndex).FindControl("DetailsView1"), DetailsView).FindControl("ddlDateAction_Year"), DropDownList)
        actionDate_month = CType(CType(gvMaster.Rows(gvMaster.SelectedIndex).FindControl("DetailsView1"), DetailsView).FindControl("ddlDateAction_Month"), DropDownList)
        actionDate_day = CType(CType(gvMaster.Rows(gvMaster.SelectedIndex).FindControl("DetailsView1"), DetailsView).FindControl("ddlDateAction_Day"), DropDownList)
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        'month/day/year
        actionDate_label = CType(CType(gvMaster.Rows(gvMaster.SelectedIndex).FindControl("DetailsView1"), DetailsView).FindControl("lblActionDate"), Label)
        actionDate_label.Text = MonthName(actionDate_month.SelectedValue, True).ToUpper & "/" & actionDate_day.SelectedValue & "/" & actionDate_year.SelectedValue
    End Sub

    Protected Sub Page_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        'Me.DetailsView1.DataBind()
    End Sub
End Class
