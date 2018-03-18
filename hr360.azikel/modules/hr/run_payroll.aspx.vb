
Partial Class modules_hr_run_payroll
    Inherits System.Web.UI.Page

    Public currentYear As Int32 = Now.Year, lastPayrollMonth As Int32, pendingPayrollMonths As Int32, activeMonth As Int32
    Public iterateMonth_Month As Int32, iterateMonth_Year As Int32

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim monthRows As System.Data.DataRowCollection = Common.GetTableRows("SELECT TOP 1 * FROM dbo.HR_PAYROLL_PayrollProcessingStatus WHERE EffectiveYear = " & currentYear & " AND CurrentStatus = 'C' ORDER BY EntryDate DESC")
            lastPayrollMonth = CType(monthRows(0).Item("EffectiveMonth"), Int32)
            pendingPayrollMonths = Now.Month - lastPayrollMonth
            For i As Int32 = 1 To pendingPayrollMonths
                Me.ddlPayrollMonths.Items.Add(New System.Web.UI.WebControls.ListItem(MonthName(lastPayrollMonth + i, False).ToUpper, lastPayrollMonth + i))
            Next
        End If
        If ddlPayrollMonths.Items.Count <> 0 Then
            activeMonth = ddlPayrollMonths.SelectedValue
        End If
        Dim rows As System.Data.DataRowCollection = Common.GetTableRows("SELECT TOP 1 * FROM dbo.HR_PAYROLL_PayrollProcessingStatus ORDER BY EntryDate DESC")

        'set hyperlink urls
        Me.hlnkProvLedger.NavigateUrl = "~/modules/reports/rpt_Prov_PayrollLedger.aspx?a=" & activeMonth
        Me.hlnkProvAllowances.NavigateUrl = "~/modules/reports/rpt_Prov_SpecialAllowances.aspx?a=" & activeMonth
        Me.hlnkProvDeductions.NavigateUrl = "~/modules/reports/rpt_Prov_SpecialDeductions.aspx?a=" & activeMonth
        Me.hlnkProvLoans.NavigateUrl = "~/modules/reports/rpt_Prov_Loans.aspx?a=" & activeMonth
        Me.hlnkProvCoop.NavigateUrl = "~/modules/reports/rpt_Prov_Coop.aspx?a=" & activeMonth
        Me.hlnkProvOvertime.NavigateUrl = "~/modules/reports/rpt_Prov_Overtime.aspx?a=" & activeMonth

        Select Case rows(0).Item("CurrentStatus").ToString
            Case "I"
                DisplayIntermediateMessage()
            Case Else
                'do nothing
        End Select
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("~\frameset_main_admin.aspx")
    End Sub

    Protected Sub btnContinue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnContinue.Click
        Call RunPayroll(activeMonth, Now.Year)
    End Sub

    Private Sub RunPayroll(ByVal _month As Int32, ByVal _year As Int32)
        'set Payroll Engine Processing Status to "intermediate", pending the final/total acceptance of all payroll entries for the month.
        'When final acceptance occurs, move all "one-to-many" table records into shadow copy tables...
        Dim sqlForInsert As String = "INSERT INTO dbo.HR_PAYROLL_PayrollProcessingStatus(EntryDate, EffectiveMonth, EffectiveYear, CurrentStatus) VALUES('" & Now.ToString & "','" & activeMonth.ToString & "','" & Now.Year.ToString & "','" & "I" & "')"
        Call Common.InsertTableRow(sqlForInsert)

        'fetch all staff records (from staff_base table)
        Dim rows As System.Data.DataRowCollection
        rows = Common.GetTableRows("SELECT * FROM dbo.VW_HR_PAYROLL_StagingArea")
        'loop through row collection, determine the values for each field, and insert each row into payrollarchive table
        For i As Int32 = 0 To rows.Count - 1
            Dim _entrydate As DateTime, _effectiveMonth As Int32, _effectiveYear As Int32, _staffId As Int32, _staffCode As String, _staffName As String, _basic As Decimal, _functional As Decimal, _niteShift As Decimal, _overtime1 As Decimal, _overtime2 As Decimal, _otherTaxable As Decimal, _housingTaxable As Decimal, _transportTaxable As Decimal, _housingNonTaxable As Decimal, _transportNonTaxable As Decimal, _lunch As Decimal, _clothing As Decimal, _utility As Decimal, _paye As Decimal, _loan As Decimal, _unionDues As Decimal, _fobTob As Decimal, _coop As Decimal, _otherDeduction As Decimal, _pension As Decimal
            _entrydate = Now
            _effectiveMonth = _month
            _effectiveYear = _year
            _staffId = rows(i).Item("StaffId")
            _staffCode = rows(i).Item("StaffCode")
            _staffName = rows(i).Item("StaffName")
            _basic = rows(i).Item("Basic")
            _functional = rows(i).Item("Functional")
            _niteShift = rows(i).Item("NiteShift")
            _overtime1 = rows(i).Item("Overtime1")
            _overtime2 = rows(i).Item("Overtime2")
            _otherTaxable = rows(i).Item("OtherTaxable")
            _housingTaxable = rows(i).Item("HousingTaxable")
            _transportTaxable = rows(i).Item("TransportTaxable")
            _housingNonTaxable = rows(i).Item("HousingNonTaxable")
            _transportNonTaxable = rows(i).Item("TransportNonTaxable")
            _lunch = rows(i).Item("Lunch")
            _clothing = rows(i).Item("Clothing")
            _utility = rows(i).Item("Utility")
            _paye = rows(i).Item("PAYE")
            _loan = rows(i).Item("Loan")
            _unionDues = rows(i).Item("UnionDues")
            _fobTob = rows(i).Item("FOBTOB")
            _coop = rows(i).Item("COOP")
            _otherDeduction = rows(i).Item("OtherDeduction")
            _pension = rows(i).Item("Pension")

            'insert
            sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Archive (EntryDate, EffectiveMonth, EffectiveYear, StaffId, StaffCode, StaffName, [Basic], Functional, NiteShift, Overtime1, Overtime2, OtherTaxable, HousingTaxable, TransportTaxable, HousingNonTaxable, TransportNonTaxable, Lunch, Clothing, Utility, Paye, Loan, UnionDues, FOBTOB, COOP, OtherDeduction, Pension) "
            sqlForInsert &= " VALUES('" & _entrydate & "','" & _effectiveMonth & "','" & _effectiveYear & "','" & _staffId & "','" & _staffCode.Replace("'", "") & "','" & _staffName.Replace("'", "") & "','" & _basic & "','" & _functional & "','" & _niteShift & "','" & _overtime1 & "','" & _overtime2 & "','" & _otherTaxable & "','" & _housingTaxable & "','" & _transportTaxable & "','" & _housingNonTaxable & "','" & _transportNonTaxable & "','" & _lunch & "','" & _clothing & "','" & _utility & "','" & _paye & "','" & _loan & "','" & _unionDues & "','" & _fobTob & "','" & _coop & "','" & _otherDeduction & "','" & _pension & "')"
            Call Common.InsertTableRow(sqlForInsert)
        Next
        'display a message informing user that the "Payroll Processing Engine" is now in an intermediate state.
        Call DisplayIntermediateMessage()
    End Sub

    Private Sub DisplayIntermediateMessage()
        Me.ddlPayrollMonths.Enabled = False
        Me.btnContinue.Enabled = False
        Me.btnCancel.Enabled = False
        Me.lblHeaderStatus.Visible = True
        Me.lblStatus.Visible = True
        Me.btnConclude.Visible = True
        Me.btnConclude.Enabled = True
        Me.btnCancel2.Visible = True
        Me.btnCancel2.Enabled = True
        Me.pnlProvisionalReports.Visible = True
    End Sub

    Protected Sub btnConclude_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConclude.Click
        'accept changes as sacrosanct, move all data in payrollarchive into payrollarchive_shadow, and all "one-to-many" tables into their respective shadow copies.
        'Archive table
        Dim sqlForInsert As String = "INSERT INTO [dbo].[HR_PAYROLL_Archive_Shadow] ([EntryDate], [EffectiveMonth], [EffectiveYear], [StaffId], [StaffCode], [StaffName], [Basic], [Functional], [NiteShift], [Overtime1], [Overtime2], [OtherTaxable], [HousingTaxable], [TransportTaxable], [HousingNonTaxable], [TransportNonTaxable], [Lunch], [Clothing], [Utility], [Paye], [Loan], [UnionDues], [FOBTOB], [COOP], [OtherDeduction], [Pension]) SELECT [EntryDate], [EffectiveMonth], [EffectiveYear], [StaffId], [StaffCode], [StaffName], [Basic], [Functional], [NiteShift], [Overtime1], [Overtime2], [OtherTaxable], [HousingTaxable], [TransportTaxable], [HousingNonTaxable], [TransportNonTaxable], [Lunch], [Clothing], [Utility], [Paye], [Loan], [UnionDues], [FOBTOB], [COOP], [OtherDeduction], [Pension] FROM dbo.[HR_PAYROLL_Archive] TRUNCATE TABLE dbo.[HR_PAYROLL_Archive]"
        Call Common.InsertTableRow(sqlForInsert)
        ''Loan table
        'sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Company_Loan_Shadow(StaffId, EntryDate, LoanAmount, Instalments, Remark) SELECT StaffId, EntryDate, LoanAmount, Instalments, Remark FROM dbo.HR_PAYROLL_Staff_Company_Loan TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Company_Loan"
        'Call Common.InsertTableRow(sqlForInsert)
        'LoanInstalment table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Company_Loan_Instalment_Shadow(StaffId, EntryDate, EffectiveMonth, EffectiveYear, LoanAmount, InstalmentAmount, PaidUp, Outstanding, InstalmentsLeft, ExpiryMonth, ExpiryYear, Remark) SELECT StaffId, EntryDate, EffectiveMonth, EffectiveYear, LoanAmount, InstalmentAmount, PaidUp, Outstanding, InstalmentsLeft, ExpiryMonth, ExpiryYear, Remark FROM dbo.HR_PAYROLL_Staff_Company_Loan_Instalment TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Company_Loan_Instalment"
        Call Common.InsertTableRow(sqlForInsert)
        'Coop table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Coop_Shadow(StaffId, EntryDate, EffectiveMonth, EffectiveYear, FresherFee, MonthlyContribution, LoanDeduction, Remark) SELECT StaffId, EntryDate, EffectiveMonth, EffectiveYear, FresherFee, MonthlyContribution, LoanDeduction, Remark FROM dbo.HR_PAYROLL_Staff_Coop TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Coop"
        Call Common.InsertTableRow(sqlForInsert)
        'Overtime table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Overtime_Shadow(StaffId, EntryDate, EffectiveMonth, EffectiveYear, HoursWeekday, HoursWeekend, DaysWorked, NightsWorked, Remark) SELECT StaffId, EntryDate, EffectiveMonth, EffectiveYear, HoursWeekday, HoursWeekend, DaysWorked, NightsWorked, Remark FROM dbo.HR_PAYROLL_Staff_Overtime TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Overtime"
        Call Common.InsertTableRow(sqlForInsert)
        'SpecialAllowance table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Special_Allowance_Shadow(StaffId, EntryDate, EffectiveMonth, EffectiveYear, Amount, Purpose, Remark) SELECT StaffId, EntryDate, EffectiveMonth, EffectiveYear, Amount, Purpose, Remark FROM dbo.HR_PAYROLL_Staff_Special_Allowance TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Special_Allowance"
        Call Common.InsertTableRow(sqlForInsert)
        'SpecialDeduction table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Special_Deduction_Shadow(StaffId, EntryDate, EffectiveMonth, EffectiveYear, Amount, Purpose, Remark) SELECT StaffId, EntryDate, EffectiveMonth, EffectiveYear, Amount, Purpose, Remark FROM dbo.HR_PAYROLL_Staff_Special_Deduction TRUNCATE TABLE dbo.HR_PAYROLL_Staff_Special_Deduction"
        Call Common.InsertTableRow(sqlForInsert)

        'Re-populate the Co-op and Loan Registers with derived info...
        Call IterateMonth(activeMonth)

        'update the status of Payroll processing Engine to "Concluded"
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_PayrollProcessingStatus(EntryDate, EffectiveMonth, EffectiveYear, CurrentStatus) VALUES('" & Now.ToString & "','" & activeMonth.ToString & "','" & Now.Year.ToString & "','" & "C" & "')"
        Call Common.InsertTableRow(sqlForInsert)
        'set labels and buttons to their initial states.
        Me.ddlPayrollMonths.Enabled = True
        Me.btnContinue.Enabled = True
        Me.btnCancel.Enabled = True
        Me.lblHeaderStatus.Visible = False
        Me.lblStatus.Visible = False
        Me.btnConclude.Visible = False
        Me.btnConclude.Enabled = False
        Me.btnCancel2.Visible = False
        Me.btnCancel2.Enabled = False
        Me.pnlProvisionalReports.Visible = False
    End Sub

    Protected Sub IterateMonth(ByVal currentMonth As Int32)
        If currentMonth = 12 Then
            iterateMonth_Month = 1
            iterateMonth_Year = currentYear + 1
        Else
            iterateMonth_Month = currentMonth + 1
            iterateMonth_Year = currentYear
        End If

        'LoanInstalment table
        Dim sqlForInsert As String = "INSERT INTO dbo.HR_PAYROLL_Staff_Company_Loan_Instalment (StaffId, EntryDate, EffectiveMonth, EffectiveYear, LoanAmount, InstalmentAmount, PaidUp, Outstanding, InstalmentsLeft, ExpiryMonth, ExpiryYear, Remark) SELECT StaffId, EntryDate, " & iterateMonth_Month & ", " & iterateMonth_Year & ", LoanAmount, InstalmentAmount, PaidUp + InstalmentAmount, Outstanding - InstalmentAmount, InstalmentsLeft, ExpiryMonth, ExpiryYear, Remark FROM dbo.HR_PAYROLL_Staff_Company_Loan_Instalment_Shadow WHERE EffectiveMonth = " & activeMonth & " AND EffectiveYear = " & currentYear & " "
        Call Common.InsertTableRow(sqlForInsert)
        'Coop table
        sqlForInsert = "INSERT INTO dbo.HR_PAYROLL_Staff_Coop (StaffId, EntryDate, EffectiveMonth, EffectiveYear, FresherFee, MonthlyContribution, LoanDeduction, Remark) SELECT StaffId, EntryDate, " & iterateMonth_Month & ", " & iterateMonth_Year & ", 0, MonthlyContribution, LoanDeduction, Remark FROM dbo.HR_PAYROLL_Staff_Coop_Shadow WHERE EffectiveMonth = " & activeMonth & " AND EffectiveYear = " & currentYear & " "
        Call Common.InsertTableRow(sqlForInsert)
    End Sub

    Protected Sub btnCancel2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel2.Click
        'purge the temporary Payroll_Archive table
        Dim sqlForDelete As String = "TRUNCATE TABLE dbo.HR_PAYROLL_Archive "
        Call Common.DeleteTableRow(sqlForDelete)

        'update the status of Payroll processing Engine to "Aborted"
        Dim sqlForInsert As String = "INSERT INTO dbo.HR_PAYROLL_PayrollProcessingStatus(EntryDate, EffectiveMonth, EffectiveYear, CurrentStatus) VALUES('" & Now.ToString & "','" & activeMonth.ToString & "','" & Now.Year.ToString & "','" & "A" & "')"
        Call Common.InsertTableRow(sqlForInsert)

        'navigate away from here to welcome page
        Response.Redirect("run_payroll.aspx")
    End Sub
End Class
