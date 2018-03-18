<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frameset.aspx.vb" Inherits="frameset" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>HR360 | West African Seasoning Company Limited - powered by Smart Systems</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
		<%
			dim destinationPage as string
		    destinationPage = "frameset_main_admin.aspx"
'			Select Case StateBag.SessionState.RoleId
'				Case 20
'					destinationPage = "frameset_main.aspx"
'				Case Else
'					destinationPage = "frameset_main_admin.aspx"
'			End Select
		%>
<frameset rows="100,*" cols="*" frameborder="yes" border="1" framespacing="0">
  <frame src="frameset_top.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="210,*" frameborder="yes" border="1" framespacing="0">
    <frame class="frameLeft" src="frameset_left.aspx?a=<%=StateBag.SessionState.Username%>&b=<%=destinationPage%>&c=<%=StateBag.SessionState.RoleId%>&d=<%=StateBag.SessionState.UserCode%>" name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame" title="leftFrame" />
	  <frameset rows="30,*" frameborder="yes" border="1" framespacing="0">
		<frame class="frameTop" src="frameset_infobar.aspx" name="leftFrame" scrolling="No" noresize="noresize" id="infoFrame" title="infoFrame" />
		<frame class="frameBottom" src="<%=destinationPage%>?a=<%=StateBag.SessionState.Username%>&b=<%=StateBag.SessionState.RoleId%>&c=<%=StateBag.SessionState.UserCode%>" name="mainFrame" id="mainFrame" title="mainFrame" scrolling="auto" />
	  </frameset>
  </frameset>
</frameset>
<noframes><body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    </form>
</body>
</noframes>
</html>
