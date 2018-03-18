Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration.ConfigurationManager
Imports Nextzon.EnterpriseLibrary
Imports System.Net.Mail

Namespace Dao
    Namespace DbEntities
        'In-code representations of database tables.
        Public Class DbUser
            Public Class Profile
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.User.Profile
                Private _departmentId As Int32
                Public Property DepartmentId() As Int32
                    Get
                        Return _departmentId
                    End Get
                    Set(ByVal value As Int32)
                        _departmentId = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.User.Metadata
                'public shared parameter declarations; one for every column of this table
                'Table field names, used for datatable references 
            End Class
            Private Const STP_METADATA_INSERT_USER As String = "STP_METADATA_INSERT_USER"
            Private Const STP_METADATA_SELECT_USER_ALL As String = "STP_METADATA_SELECT_USER_ALL"
            Private Const STP_METADATA_SELECT_USER_BY_USERCODE As String = "STP_METADATA_SELECT_USER_BY_USERCODE"
            Private Const STP_METADATA_UPDATE_USER As String = "STP_METADATA_UPDATE_USER"
            Private Const STP_METADATA_DELETE_USER As String = "STP_METADATA_DELETE_USER"
            Private Const STP_LOGIN_SELECT_USER_BY_USERNAME_AND_PASSWORD_AND_ROLEID As String = "STP_LOGIN_SELECT_USER_BY_USERNAME_AND_PASSWORD_AND_ROLEID"
            Public Shared Function Insert(ByVal profile As Profile) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Output, Metadata.ParameterUserId.Name, CType(Metadata.ParameterUserId.Type, DbType), Metadata.ParameterUserId.Size, profile.UserId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Output, Metadata.ParameterUserCode.Name, CType(Metadata.ParameterUserCode.Type, DbType), Metadata.ParameterUserCode.Size, profile.UserCode))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterUsername.Name, CType(Metadata.ParameterUsername.Type, DbType), Metadata.ParameterUsername.Size, profile.Username))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParemeterDateOfBirth.Name, CType(Metadata.ParemeterDateOfBirth.Type, DbType), Metadata.ParemeterDateOfBirth.Size, profile.DateofBirth))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterEmail.Name, CType(Metadata.ParameterEmail.Type, DbType), Metadata.ParameterEmail.Size, profile.Email))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterTelephone.Name, CType(Metadata.ParameterTelephone.Type, DbType), Metadata.ParameterTelephone.Size, profile.Telephone))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMaritalStatus.Name, CType(Metadata.ParameterMaritalStatus.Type, DbType), Metadata.ParameterMaritalStatus.Size, profile.MaritalStatus))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterFirstname.Name, CType(Metadata.ParameterFirstname.Type, DbType), Metadata.ParameterFirstname.Size, profile.Name.FirstName))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMiddlename.Name, CType(Metadata.ParameterMiddlename.Type, DbType), Metadata.ParameterMiddlename.Size, profile.Name.MiddleName))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterSurname.Name, CType(Metadata.ParameterSurname.Type, DbType), Metadata.ParameterSurname.Size, profile.Name.Surname))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterPassword.Name, CType(Metadata.ParameterPassword.Type, DbType), Metadata.ParameterPassword.Size, profile.Password))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterResidenceStreet.Name, CType(Metadata.ParameterResidenceStreet.Type, DbType), Metadata.ParameterResidenceStreet.Size, profile.Residence.Street))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterResidenceStateId.Name, CType(Metadata.ParameterResidenceStateId.Type, DbType), Metadata.ParameterResidenceStateId.Size, profile.Residence.StateId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterResidenceCountryId.Name, CType(Metadata.ParameterResidenceCountryId.Type, DbType), Metadata.ParameterResidenceCountryId.Size, profile.Residence.CountryId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterSex.Name, CType(Metadata.ParameterSex.Type, DbType), Metadata.ParameterSex.Size, profile.Sex))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbDepartment.Metadata.ParameterDepartmentId.Name, CType(DbDepartment.Metadata.ParameterDepartmentId.Type, DbType), DbDepartment.Metadata.ParameterDepartmentId.Size, profile.DepartmentId))

                    Return dbObj.ExecuteNonQuery(profile.ConnectionString, STP_METADATA_INSERT_USER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function SelectAll(ByVal profile As Profile) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    Return dbobj.GetDataTable(profile.ConnectionString, STP_METADATA_SELECT_USER_ALL, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function SelectByUserCode(ByVal profile As Profile) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbobj.MakeParameter(ParameterDirection.Input, Metadata.ParameterUserCode.Name, CType(Metadata.ParameterUserCode.Type, DbType), Metadata.ParameterUserCode.Size, profile.UserCode))

                    Return dbobj.GetDataTable(profile.ConnectionString, STP_METADATA_SELECT_USER_BY_USERCODE, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal profile As Profile) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterUserId.Name, CType(Metadata.ParameterUserId.Type, DbType), Metadata.ParameterUserId.Size, profile.UserId))

                    Return dbObj.ExecuteNonQuery(profile.ConnectionString, STP_METADATA_UPDATE_USER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Delete(ByVal profile As Profile) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterUserId.Name, CType(Metadata.ParameterUserId.Type, DbType), Metadata.ParameterUserId.Size, profile.UserId))

                    Return dbObj.ExecuteNonQuery(profile.ConnectionString, STP_METADATA_DELETE_USER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Login(ByVal profile As Profile) As DataTable
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    profile.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterUsername.Name, CType(Metadata.ParameterUsername.Type, DbType), Metadata.ParameterUsername.Size, profile.Username))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterPassword.Name, CType(Metadata.ParameterPassword.Type, DbType), Metadata.ParameterPassword.Size, profile.Password))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleId.Name, CType(Metadata.ParameterRoleId.Type, DbType), Metadata.ParameterRoleId.Size, profile.RoleId))

                    Return dbObj.GetDataTable(profile.ConnectionString, STP_LOGIN_SELECT_USER_BY_USERNAME_AND_PASSWORD_AND_ROLEID, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
        End Class
        Public Class DbRole
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _roleId As Int32
                Private _roleName As String
                Public Property RoleId() As Int32
                    Get
                        Return _roleId
                    End Get
                    Set(ByVal value As Int32)
                        _roleId = value
                    End Set
                End Property
                Public Property RoleName() As String
                    Get
                        Return _roleName
                    End Get
                    Set(ByVal value As String)
                        _roleName = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterRoleId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@RoleId", SqlDbType.Int, 4)
                Public Shared ParameterRoleName As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@RoleName", SqlDbType.VarChar, 200)
                'Table field names, used for datatable references 
                Public Const FieldRoleId As String = "RoleId"
                Public Const FieldRoleName As String = "RoleName"
            End Class
            Private Const STP_METADATA_SELECT_ROLE_ALL As String = "STP_METADATA_SELECT_ROLE_ALL"
            Private Const STP_METADATA_SELECT_ROLE_BY_ROLEID As String = "STP_METADATA_SELECT_ROLE_BY_ROLEID"
            Private Const STP_METADATA_DELETE_ROLE As String = "STP_METADATA_DELETE_ROLE"
            Private Const STP_METADATA_INSERT_ROLE As String = "STP_METADATA_INSERT_ROLE"
            Private Const STP_METADATA_UPDATE_ROLE As String = "STP_METADATA_UPDATE_ROLE"
            Public Shared Function SelectAll(ByVal properties As Properties) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    Return dbobj.GetDataTable(properties.ConnectionString, STP_METADATA_SELECT_ROLE_ALL, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function SelectByRoleId(ByVal properties As Properties) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbobj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleId.Name, CType(Metadata.ParameterRoleId.Type, DbType), Metadata.ParameterRoleId.Size, properties.RoleId))

                    Return dbobj.GetDataTable(properties.ConnectionString, STP_METADATA_SELECT_ROLE_BY_ROLEID, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function Delete(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleId.Name, CType(Metadata.ParameterRoleId.Type, DbType), Metadata.ParameterRoleId.Size, properties.RoleId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_DELETE_ROLE, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Insert(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleId.Name, CType(Metadata.ParameterRoleId.Type, DbType), Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleName.Name, CType(Metadata.ParameterRoleName.Type, DbType), Metadata.ParameterRoleName.Size, properties.RoleName))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_INSERT_ROLE, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleId.Name, CType(Metadata.ParameterRoleId.Type, DbType), Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleName.Name, CType(Metadata.ParameterRoleName.Type, DbType), Metadata.ParameterRoleName.Size, properties.RoleName))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_UPDATE_ROLE, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
        End Class
        Public Class DbRoleMenu
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _roleMenuId As Int32
                Private _roleId As Int32
                Private _menuId As Int32
                Public Property RoleMenuId() As Int32
                    Get
                        Return _roleMenuId
                    End Get
                    Set(ByVal value As Int32)
                        _roleMenuId = value
                    End Set
                End Property
                Public Property RoleId() As Int32
                    Get
                        Return _roleId
                    End Get
                    Set(ByVal value As Int32)
                        _roleId = value
                    End Set
                End Property
                Public Property MenuId() As Int32
                    Get
                        Return _menuId
                    End Get
                    Set(ByVal value As Int32)
                        _menuId = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterRoleMenuId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@RoleMenuId", SqlDbType.Int, 4)
                'Table field names, used for datatable references 
                Public Const FieldRoleMenuId As String = "RoleMenuId"
                Public Const FieldRoleId As String = "RoleId"
                Public Const FieldMenuId As String = "MenuId"
            End Class
            Private Const STP_METADATA_DELETE_ROLEMENU As String = "STP_METADATA_DELETE_ROLEMENU"
            Private Const STP_METADATA_INSERT_ROLEMENU As String = "STP_METADATA_INSERT_ROLEMENU"
            Private Const STP_METADATA_UPDATE_ROLEMENU As String = "STP_METADATA_UPDATE_ROLEMENU"            
            Public Shared Function Delete(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleMenuId.Name, CType(Metadata.ParameterRoleMenuId.Type, DbType), Metadata.ParameterRoleMenuId.Size, properties.RoleMenuId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_DELETE_ROLEMENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Insert(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleMenuId.Name, CType(Metadata.ParameterRoleMenuId.Type, DbType), Metadata.ParameterRoleMenuId.Size, properties.RoleMenuId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbRole.Metadata.ParameterRoleId.Name, CType(DbRole.Metadata.ParameterRoleId.Type, DbType), DbRole.Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbMenu.Metadata.ParameterMenuId.Name, CType(DbMenu.Metadata.ParameterMenuId.Type, DbType), DbMenu.Metadata.ParameterMenuId.Size, properties.MenuId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_INSERT_ROLEMENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleMenuId.Name, CType(Metadata.ParameterRoleMenuId.Type, DbType), Metadata.ParameterRoleMenuId.Size, properties.RoleMenuId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbRole.Metadata.ParameterRoleId.Name, CType(DbRole.Metadata.ParameterRoleId.Type, DbType), DbRole.Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbMenu.Metadata.ParameterMenuId.Name, CType(DbMenu.Metadata.ParameterMenuId.Type, DbType), DbMenu.Metadata.ParameterMenuId.Size, properties.MenuId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_UPDATE_ROLEMENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
        End Class
        Public Class DbRoleUser
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _roleUserId As Int32
                Private _roleId As Int32
                Private _userId As Int64
                Public Property RoleUserId() As Int32
                    Get
                        Return _roleUserId
                    End Get
                    Set(ByVal value As Int32)
                        _roleUserId = value
                    End Set
                End Property
                Public Property RoleId() As Int32
                    Get
                        Return _roleId
                    End Get
                    Set(ByVal value As Int32)
                        _roleId = value
                    End Set
                End Property
                Public Property UserId() As Int64
                    Get
                        Return _userId
                    End Get
                    Set(ByVal value As Int64)
                        _userId = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterRoleUserId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@RoleUserId", SqlDbType.Int, 4)
                'Table field names, used for datatable references 
                Public Const FieldRoleUserId As String = "RoleUserId"
                Public Const FieldRoleId As String = "RoleId"
                Public Const FieldUserId As String = "UserId"
            End Class
            Private Const STP_METADATA_DELETE_ROLEUSER As String = "STP_METADATA_DELETE_ROLEUSER"
            Private Const STP_METADATA_INSERT_ROLEUSER As String = "STP_METADATA_INSERT_ROLEUSER"
            Private Const STP_METADATA_UPDATE_ROLEUSER As String = "STP_METADATA_UPDATE_ROLEUSER"
            Public Shared Function Delete(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleUserId.Name, CType(Metadata.ParameterRoleUserId.Type, DbType), Metadata.ParameterRoleUserId.Size, properties.RoleUserId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_DELETE_ROLEUSER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Insert(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleUserId.Name, CType(Metadata.ParameterRoleUserId.Type, DbType), Metadata.ParameterRoleUserId.Size, properties.RoleUserId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbRole.Metadata.ParameterRoleId.Name, CType(DbRole.Metadata.ParameterRoleId.Type, DbType), DbRole.Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbUser.Metadata.ParameterUserId.Name, CType(DbUser.Metadata.ParameterUserId.Type, DbType), DbUser.Metadata.ParameterUserId.Size, properties.UserId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_INSERT_ROLEUSER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterRoleUserId.Name, CType(Metadata.ParameterRoleUserId.Type, DbType), Metadata.ParameterRoleUserId.Size, properties.RoleUserId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbRole.Metadata.ParameterRoleId.Name, CType(DbRole.Metadata.ParameterRoleId.Type, DbType), DbRole.Metadata.ParameterRoleId.Size, properties.RoleId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbUser.Metadata.ParameterUserId.Name, CType(DbUser.Metadata.ParameterUserId.Type, DbType), DbUser.Metadata.ParameterUserId.Size, properties.UserId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_UPDATE_ROLEUSER, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
        End Class
        Public Class DbDepartment
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _departmentId As Int32
                Private _departmentName As String
                Public Property DepartmentId() As Int32
                    Get
                        Return _departmentId
                    End Get
                    Set(ByVal value As Int32)
                        _departmentId = value
                    End Set
                End Property
                Public Property DepartmentName() As String
                    Get
                        Return _departmentName
                    End Get
                    Set(ByVal value As String)
                        _departmentName = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterDepartmentId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@DepartmentId", SqlDbType.Int, 4)
                Public Shared ParameterDepartmentName As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@DepartmentName", SqlDbType.VarChar, 200)
                ' Table field names, used for datatable references 
                Public Const FieldDepartmentId As String = "DepartmentId"
                Public Const FieldDepartmentName As String = "DepartmentName"
            End Class
            Private Const STP_METADATA_SELECT_DEPARTMENT_ALL As String = "STP_METADATA_SELECT_DEPARTMENT_ALL"
            Private Const STP_METADATA_SELECT_DEPARTMENT_BY_DEPARTMENTID As String = "STP_METADATA_SELECT_DEPARTMENT_BY_DEPARTMENTID"
            Private Const STP_METADATA_DELETE_DEPARTMENT As String = "STP_METADATA_DELETE_DEPARTMENT"
            Private Const STP_METADATA_INSERT_DEPARTMENT As String = "STP_METADATA_INSERT_DEPARTMENT"
            Private Const STP_METADATA_UPDATE_DEPARTMENT As String = "STP_METADATA_UPDATE_DEPARTMENT"
            Public Shared Function SelectAll(ByVal properties As Properties) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    Return dbobj.GetDataTable(properties.ConnectionString, STP_METADATA_SELECT_DEPARTMENT_ALL, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function SelectByDepartmentId(ByVal properties As Properties) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbobj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentId.Name, CType(Metadata.ParameterDepartmentId.Type, DbType), Metadata.ParameterDepartmentId.Size, properties.DepartmentId))

                    Return dbobj.GetDataTable(properties.ConnectionString, STP_METADATA_SELECT_DEPARTMENT_BY_DEPARTMENTID, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
            Public Shared Function Delete(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentId.Name, CType(Metadata.ParameterDepartmentId.Type, DbType), Metadata.ParameterDepartmentId.Size, properties.DepartmentId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_DELETE_DEPARTMENT, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Insert(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentId.Name, CType(Metadata.ParameterDepartmentId.Type, DbType), Metadata.ParameterDepartmentId.Size, properties.DepartmentId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentName.Name, CType(Metadata.ParameterDepartmentName.Type, DbType), Metadata.ParameterDepartmentName.Size, properties.DepartmentName))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_INSERT_DEPARTMENT, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentId.Name, CType(Metadata.ParameterDepartmentId.Type, DbType), Metadata.ParameterDepartmentId.Size, properties.DepartmentId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterDepartmentName.Name, CType(Metadata.ParameterDepartmentName.Type, DbType), Metadata.ParameterDepartmentName.Size, properties.DepartmentName))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_UPDATE_DEPARTMENT, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
        End Class
        Public Class DbMenu
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _menuId As Int32
                Private _menuName As String
                Private _menuUrl As String
                Private _menuTarget As String
                Private _menuOrder As Int32
                Private _moduleId As Int32
                Public Property MenuId() As Int32
                    Get
                        Return _menuId
                    End Get
                    Set(ByVal value As Int32)
                        _menuId = value
                    End Set
                End Property
                Public Property MenuName() As String
                    Get
                        Return _menuName
                    End Get
                    Set(ByVal value As String)
                        _menuName = value
                    End Set
                End Property
                Public Property MenuUrl() As String
                    Get
                        Return _menuUrl
                    End Get
                    Set(ByVal value As String)
                        _menuUrl = value
                    End Set
                End Property
                Public Property MenuTarget() As String
                    Get
                        Return _menuTarget
                    End Get
                    Set(ByVal value As String)
                        _menuTarget = value
                    End Set
                End Property
                Public Property MenuOrder() As Int32
                    Get
                        Return _menuOrder
                    End Get
                    Set(ByVal value As Int32)
                        _menuOrder = value
                    End Set
                End Property
                Public Property ModuleId() As Int32
                    Get
                        Return _moduleId
                    End Get
                    Set(ByVal value As Int32)
                        _moduleId = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterMenuId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@MenuId", SqlDbType.Int, 4)
                Public Shared ParameterMenuName As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@MenuName", SqlDbType.VarChar, 200)
                Public Shared ParameterMenuUrl As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@MenuUrl", SqlDbType.VarChar, 200)
                Public Shared ParameterMenuTarget As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@MenuTarget", SqlDbType.VarChar, 200)
                Public Shared ParamaterMenuOrder As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@MenuOrder", SqlDbType.Int, 4)
                ' Table field names, used for datatable references 
                Public Const FieldMenuId As String = "MenuId"
                Public Const FieldMenuName As String = "MenuName"
                Public Const FieldMenuUrl As String = "MenuUrl"
                Public Const FieldMenuTarget As String = "MenuTarget"
                Public Const FieldMenuOrder As String = "MenuOrder"
                Public Const FieldModuleId As String = "ModuleId"
            End Class
            Private Const STP_METADATA_DELETE_MENU As String = "STP_METADATA_DELETE_MENU"
            Private Const STP_METADATA_INSERT_MENU As String = "STP_METADATA_INSERT_MENU"
            Private Const STP_METADATA_SELECT_MENU_ALL As String = "STP_METADATA_SELECT_MENU_ALL"
            Private Const STP_METADATA_UPDATE_MENU As String = "STP_METADATA_UPDATE_MENU"
            Public Shared Function Delete(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuId.Name, CType(Metadata.ParameterMenuId.Type, DbType), Metadata.ParameterMenuId.Size, properties.MenuId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_DELETE_MENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Insert(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuId.Name, CType(Metadata.ParameterMenuId.Type, DbType), Metadata.ParameterMenuId.Size, properties.MenuId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuName.Name, CType(Metadata.ParameterMenuName.Type, DbType), Metadata.ParameterMenuName.Size, properties.MenuName))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuUrl.Name, CType(Metadata.ParameterMenuUrl.Type, DbType), Metadata.ParameterMenuUrl.Size, properties.MenuUrl))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuTarget.Name, CType(Metadata.ParameterMenuTarget.Type, DbType), Metadata.ParameterMenuTarget.Size, properties.MenuTarget))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParamaterMenuOrder.Name, CType(Metadata.ParamaterMenuOrder.Type, DbType), Metadata.ParamaterMenuOrder.Size, properties.MenuOrder))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbModule.Metadata.ParameterModuleId.Name, CType(DbModule.Metadata.ParameterModuleId.Type, DbType), DbModule.Metadata.ParameterModuleId.Size, properties.ModuleId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_INSERT_MENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function Update(ByVal properties As Properties) As SqlCommand
                Dim dbObj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuId.Name, CType(Metadata.ParameterMenuId.Type, DbType), Metadata.ParameterMenuId.Size, properties.MenuId))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuName.Name, CType(Metadata.ParameterMenuName.Type, DbType), Metadata.ParameterMenuName.Size, properties.MenuName))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuUrl.Name, CType(Metadata.ParameterMenuUrl.Type, DbType), Metadata.ParameterMenuUrl.Size, properties.MenuUrl))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParameterMenuTarget.Name, CType(Metadata.ParameterMenuTarget.Type, DbType), Metadata.ParameterMenuTarget.Size, properties.MenuTarget))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, Metadata.ParamaterMenuOrder.Name, CType(Metadata.ParamaterMenuOrder.Type, DbType), Metadata.ParamaterMenuOrder.Size, properties.MenuOrder))
                    parameterCollection.Add(dbObj.MakeParameter(ParameterDirection.Input, DbModule.Metadata.ParameterModuleId.Name, CType(DbModule.Metadata.ParameterModuleId.Type, DbType), DbModule.Metadata.ParameterModuleId.Size, properties.ModuleId))

                    Return dbObj.ExecuteNonQuery(properties.ConnectionString, STP_METADATA_UPDATE_MENU, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbObj.Close()
                    dbObj = Nothing
                End Try
            End Function
            Public Shared Function SelectAll(ByVal properties As Properties) As DataTable
                Dim dbobj As New Nextzon.EnterpriseLibrary.Data.Utilities.DbHelpers.Sql2005Helper
                Dim parameterCollection As New Collection
                Try
                    properties.ConnectionString = Miscellaneous.GetConnectionString(Miscellaneous.ConstWebConfigConnectionStringsLocalSqlServer)

                    Return dbobj.GetDataTable(properties.ConnectionString, STP_METADATA_SELECT_MENU_ALL, parameterCollection)
                Catch ex As Exception
                    Throw
                Finally
                    dbobj.Close()
                    dbobj = Nothing
                End Try
            End Function
        End Class
        Public Class DbModule
            Public Class Properties
                Inherits Nextzon.EnterpriseLibrary.Data.DbEntities.Miscellaneous.Properties
                Private _moduleId As Int32
                Private _moduleName As String
                Public Property ModuleId() As Int32
                    Get
                        Return _moduleId
                    End Get
                    Set(ByVal value As Int32)
                        _moduleId = value
                    End Set
                End Property
                Public Property ModuleName() As Int32
                    Get
                        Return _moduleName
                    End Get
                    Set(ByVal value As Int32)
                        _moduleName = value
                    End Set
                End Property
            End Class
            Public Class Metadata
                'public shared parameter declarations; one for every column of this table
                Public Shared ParameterModuleId As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@ModuleId", SqlDbType.Int, 4)
                Public Shared ParameterModuleName As New Nextzon.EnterpriseLibrary.Data.Utilities.DbParameterObjects.SqlParameterProperties("@ModuleName", SqlDbType.VarChar, 200)
                ' Table field names, used for datatable references 
                Public Const FieldModuleId As String = "ModuleId"
                Public Const FieldModuleName As String = "ModuleName"
            End Class
            Public Const STP_METADATA_INSERT_MODULE As String = "STP_METADATA_INSERT_MODULE"
        End Class
    End Namespace
End Namespace

