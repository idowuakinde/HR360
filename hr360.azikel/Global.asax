<%@ Application Language="VB" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Net.NetworkInformation" %>
<%@ Import Namespace="System.Configuration.ConfigurationManager" %>
<%@ Import Namespace="System.Diagnostics" %>

<script runat="server">
    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub
    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
'        ' Code that runs when a new session is started
'        Dim lastDate As DateTime
'        Dim fileReader As String
'        Dim appPath As String = Server.MapPath("~")
'        ' open text file and read last date
'        fileReader = My.Computer.FileSystem.ReadAllText(appPath & "\app.ini")
'        lastDate = CType(fileReader.ToString, Date)
'        'If MonthName(Month(lastDate), False) = MonthName(Month(Now), False) Then
'        If lastDate = Now Then
'            'do nothing and exit sub
'            Exit Sub
'        Else
'            ' send out status-notifier
'            Meta.StatusIntrospection.CheckStatus()
'            ' save current date in text file
'            My.Computer.FileSystem.WriteAllText(appPath & "\app.ini", Now.ToString, False)
'        End If
    End Sub
    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
    Class Meta
        Class StatusIntrospection
            Public Shared Sub CheckStatus()
                Dim _mailServerName As String = "192.168.0.4"
                Dim _toAddress As String = "idowu.akinde@nextzon.com"
                Dim _fromAddress As String = "idowu.akinde@nextzon.com"
                Dim _subject As String = "StatusNotifier component working from " & AppSettings("Application_Title") & " @ '" & My.Request.ServerVariables("SERVER_NAME") & "' on '" & Now.ToLongDateString & " " & Now.ToLongTimeString
                Dim _body As String
                Dim loop1, loop2 As Integer
                Dim arr1(), arr2() As String
                Dim coll As NameValueCollection
                Dim logger As New EventLog("Application", My.Computer.Name, "Application")

                _body = "Hello," & vbCrLf
                _body &= "This is a status notification coming from the " & AppSettings("Application_Title") & " application @ '" & My.Request.ServerVariables("SERVER_NAME") & "' on '" & Now.ToLongDateString & " " & Now.ToLongTimeString & "."
                _body &= "Details below: " & vbCrLf
                ' Load ServerVariable collection into NameValueCollection object.
                coll = My.Request.ServerVariables
                ' Get names of all keys into a string array.
                arr1 = coll.AllKeys
                For loop1 = 0 To arr1.GetUpperBound(0)
                    _body &= "  Key: " & arr1(loop1) & vbTab & vbTab & vbTab & vbTab
                    arr2 = coll.GetValues(loop1) ' Get all values under this key.
                    For loop2 = 0 To arr2.GetUpperBound(0)
                        _body &= "Value: " & arr2(loop2) & vbCrLf
                    Next loop2
                Next loop1

                Dim fromAddress As String = _fromAddress
                Dim toAddress As String = _toAddress
                Dim subject As String = _subject
                Dim body As String = _body

                Try
                    ' MailMessage is used to represent the e-mail being sent
                    Using message As New MailMessage(fromAddress, toAddress, subject, body)
                        ' SmtpClient is used to send the e-mail
                        Dim mailClient As New SmtpClient(_mailServerName)
                        ' UseDefaultCredentials tells the mail client to use the Windows credentials of the account (i.e. user account) being used to run the application
                        mailClient.UseDefaultCredentials = True

                        ' Send delivers the message to the mail server
                        mailClient.Send(message)
                    End Using
                    logger.WriteEntry("Message sent.")
                Catch ex As FormatException
                    logger.WriteEntry("FormatException: " & vbCrLf & ex.ToString)
                Catch ex As SmtpException
                    'logger.WriteEntry("SmtpException: " & vbCrLf & ex.ToString)
                Catch ex As Exception
                    logger.WriteEntry("Unanticipated exception: " & ex.ToString)
                End Try
            End Sub
        End Class
    End Class
</script>