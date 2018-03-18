<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frameset_infobar.aspx.vb" Inherits="frameset_infobar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<SCRIPT language="JavaScript">
<!--

function startclock()
{
var thetime=new Date();

var nhours=thetime.getHours();
var nmins=thetime.getMinutes();
var nsecn=thetime.getSeconds();
var nday=thetime.getDay();
var nmonth=thetime.getMonth();
var ntoday=thetime.getDate();
var nyear=thetime.getYear();
var AorP=" ";

if (nhours>=12)
    AorP="PM";
else
    AorP="AM";

if (nhours>=13)
    nhours-=12;

if (nhours==0)
   nhours=12;

if (nsecn<10)
 nsecn="0"+nsecn;

if (nmins<10)
 nmins="0"+nmins;

if (nday==0)
  nday="Sunday";
if (nday==1)
  nday="Monday";
if (nday==2)
  nday="Tuesday";
if (nday==3)
  nday="Wednesday";
if (nday==4)
  nday="Thursday";
if (nday==5)
  nday="Friday";
if (nday==6)
  nday="Saturday";

nmonth+=1;

if (nyear<=99)
  nyear= "19"+nyear;

if ((nyear>99) && (nyear<2000))
 nyear+=1900;

document.getElementById("theTime").innerHTML=nhours+":"+nmins+":"+nsecn+" "+AorP //+" "+nday+", "+nmonth+"/"+ntoday+"/"+nyear;

setTimeout('startclock()',1000);

} 

//-->
</SCRIPT>
	<script language="JavaScript" type="text/javascript" src="inc_functions_js.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><style type="text/css">
<!--
body {
	background-color: #FD0100;
}
-->
</style></head>
<body topmargin="2" leftmargin="4" marginheight="0" marginwidth="0" onload="startclock()">
    <form id="form1" runat="server">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="70%" style="height: 13px">
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Current User: " 
                  ForeColor="White"></asp:Label>
              <asp:Label ID="lblUsername" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
          <td align="right" style="height: 13px"><a href="javascript:coreLogOut()" style="color:White"><strong>Log Out </strong></a></td>
        </tr>
        <tr>
          <td style="height: 16px">
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Department: " 
                  ForeColor="White"></asp:Label>
              <asp:Label ID="lblDepartment" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
          <td align="right" style="height: 16px"><span style="height: 13px">
          <asp:Label ID="lblDateTime" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
          &nbsp;<strong><span id="theTime" class="WhiteText">Clock</span></strong> </span>			  </td>
        </tr>
      </table>
    </form>
</body>
</html>
