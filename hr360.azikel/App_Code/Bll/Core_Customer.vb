
' Generated by MyGeneration Version # (1.2.0.2)

Imports System
Imports System.Data
Imports System.Data.Common
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports NCI.EasyObjects

NameSpace DbEntities

    Public Class Core_Customer
        Inherits _Core_Customer
        Dim _db As Database = GetDatabase()

        Public Sub New()
            Me.DefaultCommandType = CommandType.Text
        End Sub
        Public Function Login(ByVal staffCode As String, ByVal staffPassword As String) As Boolean
            Dim storedProcedureName As String = "STP_LOGIN_SELECT_STAFF_BY_STAFFCODE"
            Dim dbCommand As DbCommand = _db.GetStoredProcCommand(storedProcedureName)

            ' Add procedure parameters
            _db.AddInParameter(dbCommand, "StaffCode", DbType.String, staffCode)
            _db.AddInParameter(dbCommand, "StaffPassword", DbType.String, staffPassword)

            Return MyBase.LoadFromSql(dbCommand)
        End Function
        Public Function GetBillingAddress(ByVal customerId As String) As Boolean
            Dim storedProcedureName As String = "STP_LOGIN_SELECT_BILLINGADRESS_BY_CUSTOMERCODE"
            Dim dbCommand As DbCommand = _db.GetStoredProcCommand(storedProcedureName)

            ' Add procedure parameters
            _db.AddInParameter(dbCommand, DbEntities.Core_CustomerSchema.CustomerCode.FieldName, DbType.String, customerId)

            Return MyBase.LoadFromSql(dbCommand)
        End Function
        Public Function GetLocation(ByVal staffCode As String) As Boolean
            Dim storedProcedureName As String = "STP_LOGIN_SELECT_LOCATIONNAME_BY_STAFFCODE"
            Dim dbCommand As DbCommand = _db.GetStoredProcCommand(storedProcedureName)

            ' Add procedure parameters
            _db.AddInParameter(dbCommand, "StaffCode", DbType.String, staffCode)

            Return MyBase.LoadFromSql(dbCommand)
        End Function
        Public Function GetDepartment(ByVal staffCode As String) As Boolean
            Dim storedProcedureName As String = "STP_LOGIN_SELECT_DEPARTMENTNAME_BY_DEPTCODE"
            Dim dbCommand As DbCommand = _db.GetStoredProcCommand(storedProcedureName)

            ' Add procedure parameters
            _db.AddInParameter(dbCommand, "StaffCode", DbType.String, staffCode)

            Return MyBase.LoadFromSql(dbCommand)
        End Function
    End Class

End NameSpace