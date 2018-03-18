Imports dotnetCHARTING
Imports System.Drawing
Imports System.Drawing.Drawing2D

Partial Class modules_dashboards_school_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Chart8.Type = ChartType.Combo
        'Chart8.DefaultSeries.Type = SeriesType.Spline
        Chart8.URL = ""
        Chart8.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart8.DefaultSeries.DefaultElement.ToolTip = "%yvalue Staff are in '%xvalue' Grade Level"
        Chart8.Debug = True
        Chart8.Mentor = False
        Chart8.LegendBox.Visible = False
        Chart8.ShadingEffectMode = ShadingEffectMode.Three
        Chart8.DefaultElement.ShowValue = True
        Chart8.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de8 As DataEngine
        de8 = New DataEngine()
        de8.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de8.SqlStatement = "select JobLevelName, count(*) as ItemCount from dbo.HR_Staff_Base a INNER JOIN dbo.HR_JobLevel b ON a.JobLevelId = b.JobLevelId group by JoblevelName ORDER BY ItemCount DESC "
        Dim sc8 As SeriesCollection
        sc8 = de8.GetSeries()
        Chart8.SeriesCollection.Add(sc8)

        Chart1.Type = ChartType.Combo
        'Chart1.DefaultSeries.Type = SeriesType.Spline
        Chart1.URL = ""
        Chart1.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart1.DefaultSeries.DefaultElement.ToolTip = "%yvalue Staff are '%xvalue's"
        Chart1.Debug = True
        Chart1.Mentor = False
        Chart1.LegendBox.Visible = False
        Chart1.ShadingEffectMode = ShadingEffectMode.Three
        Chart1.DefaultElement.ShowValue = True
        Chart1.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de As DataEngine
        de = New DataEngine()
        de.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de.SqlStatement = "select DesignationName, count(*) as ItemCount from dbo.HR_Staff_Base a INNER JOIN dbo.HR_Designation b ON a.DesignationId = b.DesignationId group by DesignationName ORDER BY ItemCount DESC "
        Dim sc As SeriesCollection
        sc = de.GetSeries()
        Chart1.SeriesCollection.Add(sc)

        Chart4.Type = ChartType.Combo
        'Chart4.DefaultSeries.Type = SeriesType.Spline
        Chart4.URL = ""
        Chart4.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart4.DefaultSeries.DefaultElement.ToolTip = "%yvalue staff in %xvalue Department"
        Chart4.Debug = True
        Chart4.Mentor = False
        Chart4.LegendBox.Visible = False
        Chart4.ShadingEffectMode = ShadingEffectMode.Three
        Chart4.DefaultElement.ShowValue = True
        Chart4.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de4 As DataEngine
        de4 = New DataEngine()
        de4.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de4.SqlStatement = "select Department, count(*) as ItemCount from dbo.HR_Staff_Base group by Department ORDER BY ItemCount DESC "
        Dim sc4 As SeriesCollection
        sc4 = de4.GetSeries()
        'sc4(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart4.SeriesCollection.Add(sc4)

        Chart5.Type = ChartType.Combo
        'Chart5.DefaultSeries.Type = SeriesType.Spline
        Chart5.URL = ""
        Chart5.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart5.DefaultSeries.DefaultElement.ToolTip = "We have %yvalue Staff working in %xvalue State"
        Chart5.Debug = True
        Chart5.Mentor = False
        Chart5.LegendBox.Visible = False
        Chart5.ShadingEffectMode = ShadingEffectMode.Three
        Chart5.DefaultElement.ShowValue = True
        Chart5.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de5 As DataEngine
        de5 = New DataEngine()
        de5.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de5.SqlStatement = "select LocationName, count(*) as ItemCount from dbo.HR_Staff_Base a INNER JOIN dbo.HR_Location b ON a.Locationid = b.LocationId group by LocationName ORDER BY ItemCount DESC "
        Dim sc5 As SeriesCollection
        sc5 = de5.GetSeries()
        'sc5(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart5.SeriesCollection.Add(sc5)

        Chart7.Type = ChartType.Combo
        Chart7.DefaultSeries.Type = SeriesType.Spline
        Chart7.URL = ""
        Chart7.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart7.DefaultSeries.DefaultElement.ToolTip = "%yvalue staff in '%xvalue' Age Bracket"
        Chart7.Debug = True
        Chart7.Mentor = False
        Chart7.LegendBox.Visible = False
        Chart7.ShadingEffectMode = ShadingEffectMode.Three
        Chart7.DefaultElement.ShowValue = True
        Chart7.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de7 As DataEngine
        de7 = New DataEngine()
        de7.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de7.SqlStatement = "select AgeClass, AgeNumber from dbo.[VW_HR_StaffAgeDistribution] "
        Dim sc7 As SeriesCollection
        sc7 = de7.GetSeries()
        'sc7(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart7.SeriesCollection.Add(sc7)

        Chart2.Type = ChartType.Combo
        Chart2.DefaultSeries.Type = SeriesType.Spline
        Chart2.URL = ""
        Chart2.TempDirectory = System.Configuration.ConfigurationManager.AppSettings("Chart_DotnetCharting2005_TempDirectory")
        Chart2.DefaultSeries.DefaultElement.ToolTip = "%yvalue Staff have spent %xvalue years in the service of this company"
        Chart2.Debug = True
        Chart2.Mentor = False
        Chart2.LegendBox.Visible = False
        Chart2.ShadingEffectMode = ShadingEffectMode.Three
        Chart2.DefaultElement.ShowValue = True
        Chart2.DefaultSeries.PaletteName = Palette.One
        'Add a series
        Dim de2 As DataEngine
        de2 = New DataEngine()
        de2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString
        de2.SqlStatement = "select AgeClass, AgeNumber from dbo.[VW_HR_Staff_LengthOfService_Distribution] "
        'de2.SqlStatement = "select cast(IsNull(cast(left(weight, 1) AS int), 0)*3 as varchar) + ' hrs' AS TrainingHours, count(*) as ItemCount FROM dbo.HR_Staff_Base WHERE cast(IsNull(cast(left(weight, 1) AS int), 0)*3 as varchar) + ' hrs' <> '0 hrs' GROUP BY IsNull(cast(left(weight, 1) AS int), 0)*3 ORDER BY ItemCount  DESC"
        Dim sc2 As SeriesCollection
        sc2 = de2.GetSeries()
        'sc2(0).ImageBarTemplate = "../../images/ImageBars/man_nolegs"
        Chart2.SeriesCollection.Add(sc2)
    End Sub
End Class
