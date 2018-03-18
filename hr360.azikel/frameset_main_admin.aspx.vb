Imports dotnetCHARTING
Imports System.Drawing
Imports System.Drawing.Drawing2D

Partial Class frameset_main_admin
    Inherits System.Web.UI.Page
    Public serial As Int32, serial2 As Int32, serial3 As Int32

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Chart1.Type = ChartType.Combo
        Chart1.DefaultSeries.Type = SeriesType.Spline
        Chart1.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart1.DefaultSeries.DefaultElement.ToolTip = "%yvalue% staff turnover recorded in %xvalue"
        Chart1.Debug = False
        Chart1.Mentor = False
        Chart1.LegendBox.Visible = False
        Chart1.TitleBox.Visible = True
        Chart1.ShadingEffectMode = ShadingEffectMode.Three
        Chart1.DefaultElement.ShowValue = True
        Chart1.DefaultSeries.PaletteName = Palette.One
        Chart1.DateGrouping = TimeInterval.Months
        Chart1.DefaultSeries.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        Chart1.Series.Name = "Months"
        Chart1.Series.SqlStatement = "select dbo.FN_MONTHNAME(MONTH(TransactionDate)) as Transactiondate, (avg(amount % 100)/655)*100 as Revenue from dbo.TEMPOfficeEntries group by MONTH(TransactionDate) having MONTH(TransactionDate) <= MONTH(GETDATE()) ORDER BY MONTH(TransactionDate)"
        Chart1.SeriesCollection.Add()
        Chart1.YAxis.ScaleRange.ValueHigh = 6.5
        For i As Int32 = 0 To Chart1.SeriesCollection(0).Elements.Count - 1
            Chart1.SeriesCollection(0).Elements(i).SmartLabel.Text = Chart1.SeriesCollection(0).Elements(i).YValue.ToString & ""
        Next

        Chart3.Type = ChartType.Combo
        Chart3.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart3.DefaultSeries.DefaultElement.ToolTip = "N %yvalue spent on training in %xvalue"
        Chart3.Debug = True
        Chart3.Mentor = False
        Chart3.LegendBox.Visible = False
        Chart3.TitleBox.Visible = True
        Chart3.ShadingEffectMode = ShadingEffectMode.Three
        Chart3.DefaultElement.ShowValue = False
        Chart3.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Chart3.DefaultSeries.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        Chart3.Series.Name = "Months"
        Chart3.Series.SqlStatement = "select dbo.FN_MONTHNAME(MONTH(TransactionDate)) as Transactiondate, sum(amount/10) as Revenue from dbo.TEMPOfficeEntries group by MONTH(TransactionDate) having MONTH(TransactionDate) <= MONTH(GETDATE())  ORDER BY MONTH(TransactionDate)"
        Chart3.SeriesCollection.Add()
    End Sub

    Protected Sub gvBirthdays_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvBirthdays.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            serial += 1
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            'total_label.Text = "TOTAL: N " & FormatNumber(total, 2)
        End If
    End Sub

    Protected Sub gvWeddingAnniversaries_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvWeddingAnniversaries.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            serial2 += 1
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            'total_label.Text = "TOTAL: N " & FormatNumber(total, 2)
        End If
    End Sub

    Protected Sub gvUpcomingLeaves_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvUpcomingLeaves.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            serial3 += 1
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            'total_label.Text = "TOTAL: N " & FormatNumber(total, 2)
        End If
    End Sub
End Class
