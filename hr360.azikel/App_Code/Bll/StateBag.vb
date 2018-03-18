Imports Microsoft.VisualBasic

Public Class StateBag    
    Public Class SessionState
        Public Sub New()
            'initialize all the relevant session variables here
        End Sub
        'logon credentials
        Public Shared UserName As String = ""
        Public Shared Password As String = ""
        Public Shared RoleId As Int32 = 0
        Public Shared Rolename As String = ""
        'biodata
        Public Shared UserId As Int64
        Public Shared UserCode As String = ""
        Public Shared Firstname As String = ""
        Public Shared Middlename As String = ""
        Public Shared Surname As String = ""
        Public Shared Sex As String = ""
        'Public Shared Sex As Nextzon.EnterpriseLibrary.Miscellaneous.Enumerations.Sex
        'others
        Public Shared Department As String = ""
        Public Shared BillingAddress As String = ""
        Public Shared currentEditIndex As Int64 = -1
        Public Shared ReadOnly Property FullName() As String
            Get
                Return Surname.Trim.ToUpper & ", " & Firstname.Trim & " " & Middlename.Trim
            End Get
        End Property
    End Class
    Public Class ApplicationState
        Public Sub New()
            'initialize all the relevant application variables here

        End Sub
        'application-wide settings
        Public Shared Name As String = "HR360"
    End Class
End Class
