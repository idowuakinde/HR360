<%@ Page Language="VB" AutoEventWireup="false" CodeFile="manifest.aspx.vb" Inherits="modules_misc_manifest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>e-Flight Manifest</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
<style>
all.clsMenuItemNS, .clsMenuItemIE{text-decoration: none; font: bold 12px Arial; color: white; cursor: hand; z-index:100}
#MainTable A:hover {color: yellow;}
body {
	background-image: url();
}
.style1 {color: #FFFFFF}
.style3 {color: #FFFFFF; font-weight: bold; }
</style>

<script language="JavaScript">
<!--

//Top Nav Bar I v2.1- By Constantin Kuznetsov Jr.
//Modified by Dynamic Drive for various improvements
//Visit http://www.dynamicdrive.com for this script

var keepstatic=1 //specify whether menu should stay static (works only in IE4+)
var menucolor="#BEC9DB" //specify menu color
var submenuwidth=200 //specify sub menus' width

var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
  if(popUpWin)
  {
    if(!popUpWin.closed) popUpWin.close();
  }
  popUpWin = open(URLStr, 'popUpWin', 'toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbar=yes,resizable=yes,copyhistory=yes,width='+width+',height='+height+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /></head>
<body topmargin="2" leftmargin="4">
    <form name="form1" id="form1" runat="server">
<script language="JavaScript" src="menu.js"></script>
<script language="JavaScript" src="menucontext.js"></script>
<script language="JavaScript">
//showToolbar();
</script>
<script language="JavaScript">
function UpdateIt(){
if (ie&&keepstatic&&!opr6)
document.all["MainTable"].style.top = document.body.scrollTop;
setTimeout("UpdateIt()", 200);
}
UpdateIt();
</script>

<table width="100%"  border="0">
  <tr>
    <td width="70%" valign="top"> <span class="pageHeaderStyleAMMA">&nbsp;:: Sample e-Manifest
        (for Demonstration purposes only)</span></td>
  </tr>
  <tr>
    <td valign="top" class="pageHeaderStyleAMMA" style="height: 15px">{Please Note:} Confirmation of Format and General Layout Required from Client</td>
  </tr>
  <tr>
    <td valign="top" class="pageHeaderStyleAMMA" style="height: 15px">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><table width="1600" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
      <tr bgcolor="#5D7B9D">
        <td height="30" colspan="14" align="center" class="pageHeaderStyleAMMA style1">PASSENGER MANIFEST</td>
        </tr>
      <tr align="left" valign="top" class="defaultHeaderTextStyle">
        <td height="30" colspan="2">1. FLIGHT NO.:<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td colspan="6">2. AIRCRAFT TYPE (<i>Tail Number</i>):<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td colspan="2">3. POE:<br /><asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
        <td colspan="2">4. POD:<br /><asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
        <td>5. DEPARTURE DATE:<br />
            <asp:DropDownList ID="ddlDateYear" runat="server" 
                CssClass="defaultFlightManifestStyle">            </asp:DropDownList>
            <asp:DropDownList ID="ddlDateMonth" runat="server" 
                CssClass="defaultFlightManifestStyle">
                <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">Apr</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
                <asp:ListItem Value="7">Jul</asp:ListItem>
                <asp:ListItem Value="8">Aug</asp:ListItem>
                <asp:ListItem Value="9">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlDateDay" runat="server" 
                CssClass="defaultFlightManifestStyle">            </asp:DropDownList>          </td>
        <td>6. DEPARTURE TIME:<br />
            <asp:DropDownList ID="ddlTimeHour" runat="server" CssClass="defaultFlightManifestStyle">            </asp:DropDownList>
            <asp:DropDownList ID="ddlTimeMinute" runat="server" CssClass="defaultFlightManifestStyle">            </asp:DropDownList>            </td>
      </tr>
      <tr align="center" bgcolor="#5D7B9D" class="pageHeaderStyleAMMA">
        <td height="50" colspan="8"><span class="style1">PASSENGER INFORMATION:</span></td>
        <td colspan="3"><span class="style1">BAGGAGE:</span></td>
        <td rowspan="3"><span class="style1">7j. PAX <br />
          WEIGHT:</span></td>
        <td colspan="2"><span class="style1">EMERGENCY CONTACT INFORMATION:</span></td>
        </tr>
      <tr align="center" class="defaultHeaderTextStyle">
        <td height="50" rowspan="2" bgcolor="#5D7B9D"><span class="style1">S/N:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7a. NAME:<br />
        (<i>Surname, First, Middle</i>) </span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7b. <br />
          RANK:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7c. <br />
          SSN:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7d. <br />
          STATUS:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7e. <br />
          ULN:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7f. <br />
          LINE NO.:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7g. <br />
          SVC:</span></td>
        <td colspan="2" bgcolor="#5D7B9D"><span class="style1">7h. CHECKED-IN</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7i. CARRY-ON <br />
          WEIGHT:</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7k. NAME:<br />
(<i>Surname, First, Middle</i>)</span></td>
        <td rowspan="2" bgcolor="#5D7B9D"><span class="style1">7l. TELEPHONE: </span></td>
      </tr>
      <tr>
        <td align="center" bgcolor="#5D7B9D" class="style3">PIECES:</td>
        <td align="center" bgcolor="#5D7B9D" class="style1"><strong>WEIGHT:</strong></td>
        </tr>
      <tr valign="middle">
        <td height="30" width="10" align="right">1.</td>
        <td width="300">
            <asp:TextBox ID="txtDetailsName1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td width="180">
            <asp:TextBox ID="txtDetailsEmergencyName1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td width="150">
            <asp:TextBox ID="txtDetailsEmergencyTelephone1" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">2.</td>
        <td>
            <asp:TextBox ID="txtDetailsName2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone2" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">3.</td>
        <td>
            <asp:TextBox ID="txtDetailsName3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone3" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">4.</td>
        <td>
            <asp:TextBox ID="txtDetailsName4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone4" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">5.</td>
        <td>
            <asp:TextBox ID="txtDetailsName5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone5" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">6.</td>
        <td>
            <asp:TextBox ID="txtDetailsName6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone6" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">7.</td>
        <td>
            <asp:TextBox ID="txtDetailsName7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone7" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">8.</td>
        <td>
            <asp:TextBox ID="txtDetailsName8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone8" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">9.</td>
        <td>
            <asp:TextBox ID="txtDetailsName9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone9" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">10.</td>
        <td>
            <asp:TextBox ID="txtDetailsName10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone10" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">11.</td>
        <td>
            <asp:TextBox ID="txtDetailsName11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone11" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">12.</td>
        <td>
            <asp:TextBox ID="txtDetailsName12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone12" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">13.</td>
        <td>
            <asp:TextBox ID="txtDetailsName13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone13" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">14.</td>
        <td>
            <asp:TextBox ID="txtDetailsName14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone14" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">15.</td>
        <td>
            <asp:TextBox ID="txtDetailsName15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone15" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">16.</td>
        <td>
            <asp:TextBox ID="txtDetailsName16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone16" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">17.</td>
        <td>
            <asp:TextBox ID="txtDetailsName17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone17" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">18.</td>
        <td>
            <asp:TextBox ID="txtDetailsName18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone18" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">19.</td>
        <td>
            <asp:TextBox ID="txtDetailsName19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone19" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">20.</td>
        <td>
            <asp:TextBox ID="txtDetailsName20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone20" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle">
        <td height="30" align="right">21.</td>
        <td>
            <asp:TextBox ID="txtDetailsName21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsRank21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSSN21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsStatus21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsULN21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsLineNo21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsSVC21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPieces21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsWeight21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsCarryWeight21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsPAXWeight21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyName21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
        <td>
            <asp:TextBox ID="txtDetailsEmergencyTelephone21" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>          </td>
      </tr>
      <tr valign="middle" class="defaultHeaderTextStyle">
        <td height="30" colspan="2" align="left" bgcolor="#5D7B9D"><span class="style1">MANIFEST TOTALS: </span></td>
        <td colspan="6" align="center"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="middle" class="borderedTable">8a. ACTIVE<br />
              <asp:TextBox ID="txtTotalsActive" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
            <td align="center" valign="middle" class="borderedTable">8b. DEPENDENT<br />
              <asp:TextBox ID="txtTotalsDependent" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
            <td align="center" valign="middle" class="borderedTable">8c. RETIREE<br />
              <asp:TextBox ID="txtTotalsRetiree" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
            <td align="center" valign="middle" class="borderedTable">8d. CIVILIAN<br />
              <asp:TextBox ID="txtTotalsCivilian" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
            <td align="center" valign="middle" class="borderedTable">8e. GUARD/RES<br />
              <asp:TextBox ID="txtTotalsGuard" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
          </tr>
        </table></td>
        <td align="center">8f. PIECES<br />
          <span class="borderedTable">
          <asp:TextBox ID="txtTotalsPieces" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>
          </span></td>
        <td align="center">8g. WEIGHT OF CHECKED BAGS<br />
          <span class="borderedTable">
          <asp:TextBox ID="txtTotalsWeightBag" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>
          </span></td>
        <td align="center">8h. WEIGHT OF CARRY-ON BAGS <br />
          <span class="borderedTable">
          <asp:TextBox ID="txtTotalsWeightCarryOn" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>
          </span></td>
        <td align="center">8i. WEIGHT OF PASSENGERS<br />
          <span class="borderedTable">
          <asp:TextBox ID="txtTotalsWeightPAX" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>
          </span></td>
        <td colspan="2" align="center">9. TOTAL PAX WEIGHT AND ALL BAGGAGE<br />
          <span class="borderedTable">
          <asp:TextBox ID="txtTotalsWeightALL" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox>
          </span></td>
        </tr>
      <tr valign="middle" bgcolor="#5D7B9D" class="">
        <td height="30" colspan="14" align="left"><span class="style3">10. I certify that no unauthorized weapons/ammunition/explosive devices, or other prohibited items are in the possession of those personnel for whom I am the designated manifesting representative, and that their authorized weapons have been cleared. </span></td>
        </tr>
      <tr valign="middle" class="defaultHeaderTextStyle">
        <td height="30" colspan="2" align="left">10a. SIGNATURE DATE:<br />
          <asp:DropDownList ID="ddlSignatureDateYear" runat="server" 
                CssClass="defaultFlightManifestStyle"> </asp:DropDownList>
          <asp:DropDownList ID="ddlSignatureDateMonth" runat="server" 
                CssClass="defaultFlightManifestStyle">
            <asp:ListItem Value="1">Jan</asp:ListItem>
            <asp:ListItem Value="2">Feb</asp:ListItem>
            <asp:ListItem Value="3">Mar</asp:ListItem>
            <asp:ListItem Value="4">Apr</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">Jun</asp:ListItem>
            <asp:ListItem Value="7">Jul</asp:ListItem>
            <asp:ListItem Value="8">Aug</asp:ListItem>
            <asp:ListItem Value="9">Sep</asp:ListItem>
            <asp:ListItem Value="10">Oct</asp:ListItem>
            <asp:ListItem Value="11">Nov</asp:ListItem>
            <asp:ListItem Value="12">Dec</asp:ListItem>
          </asp:DropDownList>
          <asp:DropDownList ID="ddlSignatureDateDay" runat="server" 
                CssClass="defaultFlightManifestStyle"> </asp:DropDownList></td>
        <td colspan="6" align="center">10b. PRINTED NAME (<em>Last, First, Middle</em>):<br />
          <asp:TextBox ID="txtSignatureName" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
        <td colspan="2" align="center">10c. GRADE:<br />
          <asp:TextBox ID="txtSignatureGrade" runat="server" Width="100%" 
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
        <td colspan="4" align="center">10d. SIGNATURE:<br />
          <asp:TextBox ID="txtSignature" runat="server" Width="100%" Enabled="false"
                CssClass="defaultFlightManifestStyle"></asp:TextBox></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="308" border="0">
      <tr>
        <td width="50%" align="right"><input type="reset" name="Reset" value="   Reset   " 
                class="orig_defaultButtonStyle" /></td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" CssClass="orig_defaultButtonStyle" 
                Text="   Submit &gt;   " />
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
    </form>
</body>
</html>
