Imports System.Data
Imports System.Data.Common
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports Microsoft.Practices.EnterpriseLibrary.Data.Sql

Partial Class frameset_left
    Inherits System.Web.UI.Page

    'Private WithEvents dsRoleMenu1 As dsRoleMenu
    Private components As System.ComponentModel.IContainer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblName.Text = StateBag.SessionState.FullName
        Me.lblUsername.Text = StateBag.SessionState.Rolename
        GetUserMenus()
    End Sub
    Private Sub GetUserMenus()
        Dim dt As New DataTable
        Dim objRoleMenu As New DbEntities.Core_RoleMenu

        objRoleMenu.GetRoleMenus(StateBag.SessionState.RoleId)

        'bind HR gridview
        objRoleMenu.DefaultView.RowFilter = "ModuleId = 1"
        dt = objRoleMenu.DefaultView.ToTable()
        With Me.gvStaff
            .DataSource = dt
            .DataBind()
        End With
        'bind Finance gridview
        objRoleMenu.DefaultView.RowFilter = "ModuleId = 2"
        dt = objRoleMenu.DefaultView.ToTable()
        With Me.gvFinance
            .DataSource = dt
            .DataBind()
        End With
        'bind Ops gridview
        objRoleMenu.DefaultView.RowFilter = "ModuleId = 3"
        dt = objRoleMenu.DefaultView.ToTable()
        With Me.gvOps
            .DataSource = dt
            .DataBind()
        End With
        'bind Transform gridview
        objRoleMenu.DefaultView.RowFilter = "ModuleId = 4"
        dt = objRoleMenu.DefaultView.ToTable()
        With Me.gvTransform
            .DataSource = dt
            .DataBind()
        End With
        'bind SystemManagement gridview
        objRoleMenu.DefaultView.RowFilter = "ModuleId = 5"
        dt = objRoleMenu.DefaultView.ToTable()
        With Me.gvSystemManagement
            .DataSource = dt
            .DataBind()
        End With
    End Sub
    Public Function ReplaceHTML(ByVal stringToReplace As String) As String
        Dim ret As String

        Select Case stringToReplace.ToUpper
            Case "&LT;"
                ret = "<"
            Case Else
                ret = ""
        End Select

        Return ret
    End Function
End Class
