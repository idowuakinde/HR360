Imports dotnetCHARTING
Imports System.Drawing
Imports System.Drawing.Drawing2D

Partial Class modules_dashboards_dash_appraisal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Chart4.Type = ChartType.Combo
        'Chart4.DefaultSeries.Type = SeriesType.Spline
        Chart4.URL = ""
        Chart4.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart4.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart4.Debug = True
        Chart4.Mentor = False
        Chart4.LegendBox.Visible = False
        Chart4.ShadingEffectMode = ShadingEffectMode.Three
        Chart4.DefaultElement.ShowValue = False
        Chart4.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de4 As DataEngine
        de4 = New DataEngine()
        de4.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de4.SqlStatement = " select Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'HRAD' ORDER BY StaffId DESC "
        Dim sc4 As SeriesCollection
        sc4 = de4.GetSeries()
        sc4(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart4.SeriesCollection.Add(sc4)

        Chart5.Type = ChartType.Combo
        'Chart5.DefaultSeries.Type = SeriesType.Spline
        Chart5.URL = ""
        Chart5.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart5.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart5.Debug = True
        Chart5.Mentor = False
        Chart5.LegendBox.Visible = False
        Chart5.ShadingEffectMode = ShadingEffectMode.Three
        Chart5.DefaultElement.ShowValue = False
        Chart5.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de5 As DataEngine
        de5 = New DataEngine()
        de5.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de5.SqlStatement = " select Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'FINAC' ORDER BY StaffId DESC "
        Dim sc5 As SeriesCollection
        sc5 = de5.GetSeries()
        sc5(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart5.SeriesCollection.Add(sc5)

        Chart7.Type = ChartType.Combo
        'Chart7.DefaultSeries.Type = SeriesType.Spline
        Chart7.URL = ""
        Chart7.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart7.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart7.Debug = True
        Chart7.Mentor = False
        Chart7.LegendBox.Visible = False
        Chart7.ShadingEffectMode = ShadingEffectMode.Three
        Chart7.DefaultElement.ShowValue = False
        Chart7.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de7 As DataEngine
        de7 = New DataEngine()
        de7.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de7.SqlStatement = " select Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'SECU' ORDER BY StaffId DESC "
        Dim sc7 As SeriesCollection
        sc7 = de7.GetSeries()
        sc7(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart7.SeriesCollection.Add(sc7)

        Chart2.Type = ChartType.Combo
        'Chart2.DefaultSeries.Type = SeriesType.Spline
        Chart2.URL = ""
        Chart2.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart2.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart2.Debug = True
        Chart2.Mentor = False
        Chart2.LegendBox.Visible = False
        Chart2.ShadingEffectMode = ShadingEffectMode.Three
        Chart2.DefaultElement.ShowValue = False
        Chart2.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de2 As DataEngine
        de2 = New DataEngine()
        de2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de2.SqlStatement = " select Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'PJT' ORDER BY StaffId DESC "
        Dim sc2 As SeriesCollection
        sc2 = de2.GetSeries()
        sc2(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart2.SeriesCollection.Add(sc2)

        Chart1.Type = ChartType.Combo
        'Chart1.DefaultSeries.Type = SeriesType.Spline
        Chart1.URL = ""
        Chart1.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart1.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart1.Debug = True
        Chart1.Mentor = False
        Chart1.LegendBox.Visible = False
        Chart1.ShadingEffectMode = ShadingEffectMode.Three
        Chart1.DefaultElement.ShowValue = False
        Chart1.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de As DataEngine
        de = New DataEngine()
        de.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de.SqlStatement = " select Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'FAC' ORDER BY StaffId DESC "
        Dim sc As SeriesCollection
        sc = de.GetSeries()
        sc(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart1.SeriesCollection.Add(sc)

        Chart8.Type = ChartType.Combo
        'Chart8.DefaultSeries.Type = SeriesType.Spline
        Chart8.URL = ""
        Chart8.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart8.DefaultSeries.DefaultElement.ToolTip = "%xvalue scored %yvalue% in the last Appraisal exercise"
        Chart8.Debug = True
        Chart8.Mentor = False
        Chart8.LegendBox.Visible = False
        Chart8.ShadingEffectMode = ShadingEffectMode.Three
        Chart8.DefaultElement.ShowValue = False
        Chart8.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de8 As DataEngine
        de8 = New DataEngine()
        de8.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de8.SqlStatement = " select TOP 150 Surname AS FullName, CASE StaffId % 100 WHEN 0 THEN 99 ELSE StaffId % 100 END AS StaffId FROM dbo.HR_Staff_Base WHERE Department = 'SMKT' ORDER BY StaffId DESC "
        Dim sc8 As SeriesCollection
        sc8 = de8.GetSeries()
        sc8(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart8.SeriesCollection.Add(sc8)
    End Sub
End Class
