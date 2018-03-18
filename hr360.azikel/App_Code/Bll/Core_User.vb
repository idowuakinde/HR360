
' Generated by MyGeneration Version # (1.2.0.2)

Imports System
Imports System.Data
Imports System.Data.Common
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports NCI.EasyObjects

NameSpace DbEntities

Public Class Core_User 
	Inherits _Core_User
        Dim _db As Database = GetDatabase()

	Public Sub New()
		Me.DefaultCommandType = CommandType.Text
	End Sub
        Public Function login(ByVal username As String, ByVal password As String, ByVal roleId As Int32) As Boolean
            Dim storedProcedureName As String = "STP_LOGIN_SELECT_USER_BY_USERNAME_AND_PASSWORD_AND_ROLEID"
            Dim dbCommand As DbCommand = _db.GetStoredProcCommand(storedProcedureName)

            ' Add procedure parameters
            _db.AddInParameter(dbCommand, DbEntities.Core_UserSchema.Username.FieldName, DbType.String, Username)
            _db.AddInParameter(dbCommand, DbEntities.Core_UserSchema.Password.FieldName, DbType.String, Password)
            _db.AddInParameter(dbCommand, DbEntities.Core_RoleSchema.RoleId.FieldName, DbType.Int32, roleId)

            Return MyBase.LoadFromSql(dbCommand)
        End Function
End Class

End NameSpace