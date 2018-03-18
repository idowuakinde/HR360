Imports System.Data
Imports Dao.DbEntities
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports NCI.EasyObjects
Imports Nextzon
Imports System.Net.NetworkInformation


Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            If Request.Form("ddlRole") = "20" Then
                LoginCustomer()
            Else
                LoginAdmin()
            End If
        End If
    End Sub
    Private Sub LoginCustomer()
        Dim dt As DataTable
        Dim objCustomer As New DbEntities.Core_Customer
        objCustomer.Login(Request.Form("txtUsername"), Request.Form("txtPassword"))
        dt = objCustomer.DefaultView.Table

        Select Case dt.Rows.Count
            Case 0
                Me.lblMessage.ForeColor = Drawing.Color.Red
                Me.lblMessage.Text = Messages_Error.LoginCredentials_Customer
            Case Else
                'assign values to session variables
                StateBag.SessionState.UserName = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("StaffCode"))
                StateBag.SessionState.Password = ""
                StateBag.SessionState.RoleId = CType(Request.Form("ddlRole"), Int32)
                StateBag.SessionState.Rolename = "Staff Member"
                StateBag.SessionState.UserId = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("StaffId"))
                StateBag.SessionState.UserCode = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("StaffGUID"))
                StateBag.SessionState.Surname = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("Surname"))
                StateBag.SessionState.Firstname = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("OtherNames"))
                StateBag.SessionState.Sex = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item("Gender"))
                StateBag.SessionState.Department = GetDepartment(dt.Rows(0).Item("StaffCode"))
                StateBag.SessionState.BillingAddress = GetLocation(dt.Rows(0).Item("StaffCode"))
                'redirect to frameset.aspx
                My.Response.Redirect("frameset.aspx?a=" & StateBag.SessionState.RoleId, True)
        End Select
    End Sub
    Private Sub LoginAdmin()
        Dim dt As DataTable
        Dim objUser As New DbEntities.Core_User
        objUser.login(Request.Form("txtUsername"), Request.Form("txtPassword"), Request.Form("ddlRole"))
        dt = objUser.DefaultView.Table

        Select Case dt.Rows.Count
            Case 0
                Me.lblMessage.ForeColor = Drawing.Color.Red
                Me.lblMessage.Text = Messages_Error.LoginCredentials_Admin
            Case Else
                'assign values to session variables
                StateBag.SessionState.UserName = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldUsername)
                StateBag.SessionState.Password = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldPassword)
                StateBag.SessionState.RoleId = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldRoleId)
                StateBag.SessionState.Rolename = dt.Rows(0).Item(Dao.DbEntities.DbRole.Metadata.FieldRoleName)
                StateBag.SessionState.UserId = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldUserId)
                StateBag.SessionState.UserCode = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldUserCode)
                StateBag.SessionState.Firstname = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldFirstName)
                StateBag.SessionState.Middlename = EnterpriseLibrary.Miscellaneous.SharedMethods.HandleNull(dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldMiddleName))
                StateBag.SessionState.Surname = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldSurname)
                StateBag.SessionState.Sex = dt.Rows(0).Item(Dao.DbEntities.DbUser.Metadata.FieldSex)
                StateBag.SessionState.Department = dt.Rows(0).Item(Dao.DbEntities.DbDepartment.Metadata.FieldDepartmentName)
                'redirect to frameset.aspx
                My.Response.Redirect("frameset.aspx?a=" & StateBag.SessionState.RoleId, True)
        End Select
    End Sub
    Private Function GetLocation(ByVal staffCode As String) As String
        Dim dt As DataTable
        Dim objCustomer As New DbEntities.Core_Customer
        objCustomer.GetLocation(staffCode)
        dt = objCustomer.DefaultView.Table

        Return dt.Rows(0).Item("LocationName").ToString
    End Function
    Private Function GetDepartment(ByVal staffCode As String) As String
        Dim dt As DataTable
        Dim objCustomer As New DbEntities.Core_Customer
        objCustomer.GetDepartment(staffCode)
        dt = objCustomer.DefaultView.Table

        Return dt.Rows(0).Item("DepartmentName").ToString
    End Function
End Class
