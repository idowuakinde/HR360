Imports System.Configuration.ConfigurationManager
Imports Microsoft.VisualBasic
Imports System
Imports System.Net
Imports System.Net.NetworkInformation
Imports System.Text

Public Class Miscellaneous
    'appsettings (web.config)
    Public Const ConstWebConfigAppSettingsSendErrorMail As String = "SendErrorMail"
    Public Const ConstWebConfigAppSettingsErrorMail_From As String = "ErrorMail_From"
    Public Const ConstWebConfigAppSettingsErrorMail_SenderName As String = "ErrorMail_SenderName"
    Public Const ConstWebConfigAppSettingsErrorMail_To As String = "ErrorMail_To"
    Public Const ConstWebConfigAppSettingsErrorMail_Cc As String = "ErrorMail_Cc"
    Public Const ConstWebConfigAppSettingsErrorMail_Bcc As String = "ErrorMail_Bcc"
    Public Const ConstWebConfigAppSettingsErrorMail_AuthEmail As String = "ErrorMail_AuthEmail"
    Public Const ConstWebConfigAppSettingsErrorMail_AuthPassword As String = "ErrorMail_AuthPassword"
    Public Const ConstWebConfigAppSettingsDeploymentLocation As String = "DeploymentLocation"
    Public Const ConstWebConfigAppSettingsApplicationName As String = "ApplicationName"
    Public Const ConstWebConfigAppSettingsApplicationDescription As String = "ApplicationDescription"
    Public Const ConstWebConfigAppSettingsLogFileName As String = "LogFileName"
    'connectionstrings (web.config)
    Public Const ConstWebConfigConnectionStringsLocalSqlServer As String = "LocalSqlServer"
    'Audit Log constants
    Public Const ConstEmptyStringPlaceholder As String = "-"
    'State constants
    Public Const ConstSessionStateObjectName As String = "StateObjectSession"
    Public Const ConstApplicationStateObjectName As String = "StateObjectApplication"
    '
    Public Shared Function GetConnectionString(ByVal connectionStringConstant As String) As String
        Return ConnectionStrings(connectionStringConstant).ConnectionString
    End Function
    Public Shared Function GetSexName(ByVal enumValue As String) As String
        'enumValue = CType(enumValue, Int32)
        Return System.Enum.GetName(GetType(Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.Sex), enumValue)
    End Function
    Public Function ReplaceEmptyString(ByVal value As String) As String
        Try
            Dim ret As String
            If value Is Nothing Then
                ret = ConstEmptyStringPlaceholder
            Else
                If value.Length = 0 Then
                    ret = ConstEmptyStringPlaceholder
                Else
                    ret = value
                End If
            End If

            Return ret
        Catch ex As Exception
            Throw
        End Try
    End Function
    Public Class PingSender
        Public Shared Sub Send(ByVal hostName As String, ByRef ret() As String)
            Try
                Dim pingSender As New Ping
                Dim options As New PingOptions

                options.DontFragment = True
                Dim data As String = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                Dim buffer() As Byte = Encoding.ASCII.GetBytes(data)
                Dim timeout As Int32 = 120

                Dim reply As PingReply = pingSender.Send(hostName, timeout, buffer, options)
                If reply.Status = IPStatus.Success Then
                    'ret.Append("").Append(lineBreak)
                    ret(0) = "Success"
                    ret(1) = "Hostname: " & reply.Address.ToString
                    ret(2) = "RoundTrip Time: " & reply.RoundtripTime.ToString
                    ret(3) = "Time to live: " & reply.Options.Ttl.ToString
                    ret(4) = "Don't Fragment: " & reply.Options.DontFragment.ToString
                    ret(5) = "Buffer size: " & reply.Buffer.Length
                Else
                    ret(0) = reply.Status
                    ret(1) = "Hostname=" & hostName & "; " & "RoundTrip Time=" & reply.RoundtripTime.ToString & "; " & "Timeout=" & timeout & "; " & "Buffer size=" & reply.Buffer.Length & " bytes"
                End If
            Catch pingEx As PingException
                Throw
            Catch ex As Exception
                Throw
            End Try
        End Sub
    End Class
End Class
