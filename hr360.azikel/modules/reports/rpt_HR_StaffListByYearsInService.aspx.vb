﻿
Partial Class modules_reports_rpt_HR_StaffListByYearsInService
    Inherits System.Web.UI.Page
    Public serial As Int32, total As Double, filterText As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Select Case ddlChooser.SelectedValue
            Case "0"
                filterText = " 0 AND 10000 "
            Case "1"
                filterText = " 0 AND 5 "
            Case "2"
                filterText = " 5 AND 10 "
            Case "3"
                filterText = " 10 AND 15 "
            Case "4"
                filterText = " 15 AND 20 "
            Case "5"
                filterText = " 20 AND 25 "
            Case "6"
                filterText = " 25 AND 30 "
            Case "7"
                filterText = " 30 AND 35 "
            Case "8"
                filterText = " 35 AND 10000 "
        End Select
        dsSqlGetData.SelectCommand = "SELECT a.StaffGUID, a.StaffCode, RTRIM(LTRIM(UPPER(IsNull(a.Surname,'')) + ' ' + IsNull(a.OtherNames,''))) AS StaffName, IsNull(Gender, '') as Gender, DateOfBirth, DateOfEmployment, datediff(yy, DateOfEmployment, getdate()) as YearsInService, IsNull(MaritalStatus, '') as MaritalStatus, WeddingDate, a.LocationId, LocationName, a.Department, f.DepartmentName, a.JobLevelId, JobLevelName, a.DesignationId, d.DesignationName, a.LgaOfOriginId, e.LgaName, IsNull(BloodGroup, '') as Bloodgroup, IsNull(Genotype, '') as Genotype, IsNull(AreaOfInterest, '') as AreaOfInterest, IsNull(Hobbies, '') as Hobbies, IsNull(Visa, '') as Challenged FROM dbo.HR_Staff_Base a INNER JOIN dbo.HR_Location b ON a.LocationId = b.LocationId INNER JOIN dbo.HR_JobLevel c ON a.JobLevelId = c.JobLevelId INNER JOIN dbo.HR_Designation d ON a.DesignationId = d.DesignationId INNER JOIN dbo.Core_Lga e ON a.LgaOfOriginId = e.LgaId INNER JOIN dbo.Core_Department f ON a.Department = left(f.DepartmentName, charindex('.', f.DepartmentName) - 1) WHERE datediff(yy, DateOfEmployment, getdate()) between " & filterText & " ORDER BY StaffName  "
    End Sub

    Protected Sub gvUsers_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvUsers.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            serial += 1
            Dim rowView As System.Data.DataRowView = CType(e.Row.DataItem, System.Data.DataRowView)
            'total += rowView("PAYE").ToString
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            'total_label.Text = "TOTAL: N " & FormatNumber(total, 2)
        End If
    End Sub
End Class
