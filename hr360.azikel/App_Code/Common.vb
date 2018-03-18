Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class Common
    Public Shared Function GetOrdinal(ByVal position As Int16) As String
        Dim ret As String
        Select Case position
            Case 1, 21, 31, 41, 51, 61, 71, 81, 91
                ret = "st"
            Case 2, 22, 32, 42, 52, 62, 72, 82, 92
                ret = "nd"
            Case 3, 23, 33, 43, 53, 63, 73, 83, 93
                ret = "rd"
            Case Else
                ret = "th"
        End Select

        Return ret
    End Function
    Public Shared Function GetFullMonthName(ByVal shortName As String) As String
        Dim ret As String

        ret = shortName.Trim.ToUpper

        Select Case ret
            Case "JAN"
                ret = "JANUARY"
            Case "FEB"
                ret = "FEBRUARY"
            Case "MAR"
                ret = "MARCH"
            Case "APR"
                ret = "APRIL"
            Case "MAY"
                ret = "MAY"
            Case "JUN"
                ret = "JUNE"
            Case "JUL"
                ret = "JULY"
            Case "AUG"
                ret = "AUGUST"
            Case "SEP"
                ret = "SEPTEMBER"
            Case "OCT"
                ret = "OCTOBER"
            Case "NOV"
                ret = "NOVEMBER"
            Case "DEC"
                ret = "DEEMBER"
            Case Else
                ret = ret
        End Select

        Return ret
    End Function
    Public Shared Function GetTotalRevenues() As Double
        Dim sqlQueryText As String = "select ISNULL(sum(ISNULL(amount,0)),0) as TotalRevenue from dbo.TEMPOfficeEntries WHERE YEAR(TransactionDate) = YEAR(GETDATE())"
        Dim sqlConn As New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString)
        Dim sqlCommand As New System.Data.SqlClient.SqlCommand(sqlQueryText, sqlConn)

        sqlConn.Open()
        Return sqlCommand.ExecuteScalar
        sqlConn.Close()
    End Function
    Public Shared Function GetTableRows(ByVal sqlStatement As String) As System.Data.DataRowCollection
        Dim ret As System.Data.DataRowCollection
        Dim sqlConn As New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString)
        Dim da As New System.Data.SqlClient.SqlDataAdapter(sqlStatement, sqlConn)
        Dim dt As New System.Data.DataTable

        sqlConn.Open()
        da.Fill(dt)
        sqlConn.Close()
        ret = dt.Rows
        Return ret
    End Function
    Public Shared Function UpdateTableRow(ByVal sqlStatement As String) As Int32
        Dim ret As Int32
        Dim sqlConn As New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString)
        sqlConn.Open()

        Dim sqlCmd As New SqlCommand(sqlStatement)
        sqlCmd.Connection = sqlConn
        ret = sqlCmd.ExecuteNonQuery
        sqlConn.Close()

        Return ret
    End Function
    Public Shared Function InsertTableRow(ByVal sqlStatement As String) As Int32
        Dim ret As Int32
        Dim sqlConn As New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString)
        sqlConn.Open()

        Dim sqlCmd As New SqlCommand(sqlStatement)
        sqlCmd.Connection = sqlConn
        ret = sqlCmd.ExecuteNonQuery
        sqlConn.Close()

        Return ret
    End Function
    Public Shared Function DeleteTableRow(ByVal sqlStatement As String) As Int32
        Dim ret As Int32
        Dim sqlConn As New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("iTecon").ToString)
        sqlConn.Open()

        Dim sqlCmd As New SqlCommand(sqlStatement)
        sqlCmd.Connection = sqlConn
        ret = sqlCmd.ExecuteNonQuery
        sqlConn.Close()

        Return ret
    End Function
    Public Shared Function PadNumber(ByVal numToPad As String, ByVal desiredChars As Int32) As String
        Dim ret As String

        If numToPad.Length < desiredChars Then
            numToPad = "0" & numToPad
            PadNumber(numToPad, desiredChars)
            ret = numToPad
        Else
            ret = numToPad
        End If

        Return ret
    End Function
    Public Shared Function GetSpecialDateFormat(ByVal _date As DateTime) As String
        Dim ret As String
        If _date = "01/01/1900 00:00:00" Then
            ret = "N/A (Not available)"
        Else
            Dim _dateMonth As Int32 = _date.Month
            Dim _dateMonthName As String = MonthName(_dateMonth, True)
            Dim _dateDay As Int32 = _date.Day
            Dim _dateWeekDay As String = _date.DayOfWeek.ToString
            'ret = "Aug 1 (Wednesday)"
            ret = _dateMonthName & " " & PadNumber(_dateDay, 2) & " (" & _dateWeekDay & ")"
        End If

        Return ret
    End Function
    Public Shared Function GetSpecialDateFormatShort(ByVal _date As DateTime) As String
        Dim ret As String
        If _date = "01/01/1900 00:00:00" Then
            ret = "N/A (Not available)"
        Else
            Dim _dateMonth As Int32 = _date.Month
            Dim _dateMonthName As String = MonthName(_dateMonth, True)
            Dim _dateDay As Int32 = _date.Day
            Dim _dateWeekDay As String = _date.DayOfWeek.ToString
            'ret = "Aug 1"
            ret = _dateMonthName & " " & PadNumber(_dateDay, 2)
        End If

        Return ret
    End Function
    Public Shared Function GetFriendlyDate(ByVal _date As Date) As String
        Dim ret As String
        If _date = "01/01/1900 00:00:00" Then
            ret = "N/A (Not available)"
        Else
            Dim _dateMonth As Int32 = _date.Month
            Dim _dateMonthName As String = MonthName(_dateMonth, True)
            Dim _dateDay As Int32 = _date.Day
            Dim _dateYear As String = _date.Year
            Dim _dateWeekday As String = _date.DayOfWeek.ToString
            'ret = "Aug 01, 2011 (Wednesday)"
            ret = _dateMonthName & " " & PadNumber(_dateDay, 2) & ", " & _dateYear & " (" & _dateWeekday & ")"
        End If

        Return ret
    End Function
    Public Shared Function GetFriendlyDateShort(ByVal _date As Date) As String
        Dim ret As String
        If _date = "01/01/1900 00:00:00" Then
            ret = "N/A (Not available)"
        Else
            Dim _dateMonth As Int32 = _date.Month
            Dim _dateMonthName As String = MonthName(_dateMonth, True)
            Dim _dateDay As Int32 = _date.Day
            Dim _dateYear As String = _date.Year
            Dim _dateWeekday As String = _date.DayOfWeek.ToString
            'ret = "Aug 01, 2011"
            ret = _dateMonthName & " " & PadNumber(_dateDay, 2) & ", " & _dateYear
        End If

        Return ret
    End Function
    Public Shared Function GetTimespanInYears(ByVal startDate As Date, ByVal endDate As Date) As Int32
        Dim ret As Int32

        ret = Int((endDate - startDate).TotalDays / 365)

        If startDate = "01/01/1900 00:00:00" Then
            ret = 0
        End If

        Return ret
    End Function
    Public Shared Function GetTimespanInMonths(ByVal startDate As Date, ByVal endDate As Date) As Int32
        Dim ret As Int32

        ret = Int((endDate - startDate).TotalDays / (365 / 12))

        Return ret
    End Function
    Public Shared Function GetLocalOrForeign(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "L"
                ret = "Local"
            Case "F"
                ret = "Foreign"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetConfirmationStatus(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "C"
                ret = "Confirmed"
            Case "P"
                ret = "Probation"
            Case "U"
                ret = "Unconfirmed"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetYesOrNo(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "N"
                ret = "No"
            Case "Y"
                ret = "Yes"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetMaleOrFemale(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "F"
                ret = "Female"
            Case "M"
                ret = "Male"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetFullMaritalStatus(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "D"
                ret = "Divorced"
            Case "M"
                ret = "Married"
            Case "S"
                ret = "Single"
            Case "W"
                ret = "Widowed"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetFullCareerMovementType(ByVal abbrev As String) As String
        Dim ret As String

        Select Case abbrev.ToUpper
            Case "N"
                ret = "Neutral (Horizontal Movement)"
            Case "D"
                ret = "Demotion"
            Case "P"
                ret = "Promotion"
            Case "S"
                ret = "Suspension"
            Case Else
                ret = "Unknown"
        End Select

        Return ret
    End Function
    Public Shared Function GetLocationAbbreviation(ByVal locationId As Int32) As String
        Dim ret As String

        Dim rows As DataRowCollection
        rows = GetTableRows("SELECT Remark FROM dbo.HR_Location WHERE LocationId = " & locationId & "")

        ret = rows(0).Item(0).ToString

        Return ret
    End Function
    Public Shared Function GetDepartmentAbbreviation(ByVal departmentCode As String) As String
        Dim ret As String

        Dim rows As DataRowCollection
        rows = GetTableRows("SELECT Code FROM dbo.Core_Department_Ext a INNER JOIN dbo.Core_Department b ON a.DepartmentId = b.DepartmentId WHERE left(DepartmentName, charindex('.', DepartmentName) - 1) = '" & departmentCode & "'")

        ret = rows(0).Item(0).ToString

        Return ret
    End Function
    Public Shared Function GetMaxStaffId() As Int32
        Dim ret As String

        Dim rows As DataRowCollection
        rows = GetTableRows("SELECT Max(StaffId) FROM dbo.HR_Staff_Base")

        ret = CType(rows(0).Item(0), Int32)

        Return ret
    End Function
    Public Shared Function GetLastPayrollMonth() As Int32
        Dim ret As String

        Dim rows As DataRowCollection
        rows = GetTableRows("SELECT TOP 1 EffectiveMonth FROM dbo.HR_PAYROLL_PayrollProcessingStatus WHERE CurrentStatus = 'C' ORDER BY EntryDate DESC")

        ret = CType(rows(0).Item(0), Int32)

        Return ret
    End Function
    Public Shared Function GetLastPayrollYear() As Int32
        Dim ret As String

        Dim rows As DataRowCollection
        rows = GetTableRows("SELECT TOP 1 EffectiveYear FROM dbo.HR_PAYROLL_PayrollProcessingStatus WHERE CurrentStatus = 'C' ORDER BY EntryDate DESC")

        ret = CType(rows(0).Item(0), Int32)

        Return ret
    End Function
End Class
