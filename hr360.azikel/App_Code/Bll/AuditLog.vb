Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class AuditLog
    Public Function InsertAuditLog(ByVal affectedObjectName As String, ByVal affectedObjectType As Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.DbObjectType, ByVal actionSummary As String, ByVal actionDetail As String, ByVal actionStatus As Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.DbAuditLogActionStatus, ByVal interfaceType As Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.ApplicationType, ByVal moduleName As String, ByVal requestMethod As Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.WebBrowserRequestMethod) As Int64
        Try
            Dim ret As Int64
            Dim properties As New Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.Properties
            Dim objMisc As New Miscellaneous

            properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)
            properties.AccountName = objMisc.ReplaceEmptyString(My.Request.AnonymousID)
            properties.UserFullName = StateBag.SessionState.FullName
            properties.AffectedObjectName = affectedObjectName
            properties.AffectedObjectType = affectedObjectType
            properties.ActionSummary = actionSummary
            properties.ActionDetail = actionDetail
            properties.ActionDateTime = Now
            properties.ActionStatus = actionStatus
            properties.InterfaceType = interfaceType
            properties.ApplicationName = StateBag.ApplicationState.Name
            properties.ModuleName = moduleName
            properties.ScriptName = My.Request.ServerVariables.Item("SERVER_NAME") & My.Request.ServerVariables.Item("SCRIPT_NAME")
            properties.RemoteServer = My.Computer.Name
            properties.RemoteReferer = objMisc.ReplaceEmptyString(My.Request.UrlReferrer.AbsoluteUri)
            properties.RemoteIP = objMisc.ReplaceEmptyString(My.Request.UrlReferrer.Authority)
            properties.RemoteUsername = objMisc.ReplaceEmptyString(My.Request.Url.UserInfo)
            properties.RemoteBrowser = objMisc.ReplaceEmptyString(My.Request.UserAgent)
            properties.RequestMethod = requestMethod

            ret = Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.Insert(properties)

            Return ret
        Catch ex As Exception
            Throw
        End Try
    End Function
    Public Shared Function GetAllAuditLogs() As DataTable
        Try
            Dim dt As New DataTable
            Dim properties As New Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.Properties

            properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

            dt = Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.SelectAll(properties)

            Return dt
        Catch ex As Exception
            Throw
        End Try
    End Function
    Public Shared Function GetAuditLog(ByVal auditLogId As Int64) As DataTable
        Try
            Dim dt As New DataTable
            Dim properties As New Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.Properties

            properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)
            properties.LogId = auditLogId

            dt = Nextzon.EnterpriseLibrary.Data.DbEntities.DbAuditLog.SelectByLogId(properties)

            Return dt
        Catch ex As Exception
            Throw

        End Try
    End Function
    Public Shared Function GetEntLibDataset() As DataSet
        Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.MsEntLibSql2005Helper

        Dim ds As DataSet = dbObj.GetDataSet(1)

        Return ds
    End Function
End Class
