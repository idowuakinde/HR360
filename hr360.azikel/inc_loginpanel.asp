<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include file="Connections/cnnTecon.asp" -->
<%
	set cmdRoles = Server.CreateObject("ADODB.Command")
	cmdRoles.ActiveConnection = MM_cnnTecon_STRING
	cmdRoles.CommandText = "dbo.STP_METADATA_SELECT_ROLE_ALL"
	cmdRoles.CommandType = 4
	cmdRoles.CommandTimeout = 0
	cmdRoles.Prepared = true
	cmdRoles.Parameters.Append cmdRoles.CreateParameter("@RETURN_VALUE", 3, 4,4)
	set rstRoles = cmdRoles.Execute
	rstRoles_numRows = 0
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style5 {	color: #666666;
	font-weight: bold;
	font-size: 12px;
}
.style3 {
	color: #CD3333;
	font-weight: bold;
	font-size: 11px;
}
.style4 {color: #666666}
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
}
.style7 {color: #666666; font-weight: bold; }
.style8 {color: #FF0000}
.style9 {	color: #CD3333;
	font-weight: bold;
}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="156" border="0" cellpadding="0" cellspacing="2" class="totalbdy">
<form action="Default.aspx" target="_top" method="post" >
  <tr>
    <td height="25" align="center" bgcolor="#BF9F62" class="style7"><span class="style3">TECON</span> LOGIN</td>
  </tr>
  <tr>
    <td height="20">Username:</td>
  </tr>
  <tr>
    <td height="20"><input name="txtUsername" type="text" id="txtUsername" /></td>
  </tr>
  <tr>
    <td height="20">Password:</td>
  </tr>
  <tr>
    <td height="20"><input name="txtPassword" type="password" id="txtPassword" /></td>
  </tr>
  <tr>
    <td height="20">Log in as:</td>
  </tr>
  <tr>
    <td height="20"><select name="ddlRole" id="ddlRole">
      <%
While (NOT rstRoles.EOF)
%>
      <option value="<%=(rstRoles.Fields.Item("RoleId").Value)%>"><%=(rstRoles.Fields.Item("RoleName").Value)%></option>
      <%
  rstRoles.MoveNext()
Wend
If (rstRoles.CursorType > 0) Then
  rstRoles.MoveFirst
Else
  rstRoles.Requery
End If
%>
    </select></td>
  </tr>
  <tr>
    <td height="20" align="right"><input name="btnLogin" type="submit" id="btnLogin" value="Login" /></td>
  </tr>
  </form>
</table>
</body>
</html>
