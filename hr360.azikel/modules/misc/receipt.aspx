<%@ Page Language="VB" AutoEventWireup="false" CodeFile="receipt.aspx.vb" Inherits="modules_payments_bills_receipts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>e-Receipt</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
<style>
all.clsMenuItemNS, .clsMenuItemIE{text-decoration: none; font: bold 12px Arial; color: white; cursor: hand; z-index:100}
#MainTable A:hover {color: yellow;}
.style4 {font-size: 18px}
body {
	background-image: url();
}
.style5 {font-size: 16px}
.style6 {color: #FFFFFF}
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
    <td width="70%" valign="top"> <span class="pageHeaderStyleAMMA">&nbsp;:: Sample e-Receipt
        (for Demonstration purposes only)</span></td>
  </tr>
  <tr>
    <td valign="top" class="pageHeaderStyleAMMA" style="height: 15px">{Please Note:} Confirmation of Format and General Layout Required from Client</td>
  </tr>
  <tr>
    <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5%">&nbsp;</td>
        <td><table width="100%"  border="0">
            <tr>
              <td colspan="2" class="defaultHeaderTextStyle"><table width="600" border="0" cellpadding="0" cellspacing="0" class="borderedTable watermark">
                  <tr>
                    <td align="center"><input onclick="javascript:print()" name="btnPrint1" type="button" class="orig_defaultButtonStyle" id="btnPrint1" value="Print This Receipt" /></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="20%" align="center"><img src="../../images/logo.jpg" height="101" /></td>
                          <td align="center" class="pageHeaderStyle"> <span class="style4">NIGERIAN CIVIL AVIATION AUTHORITY <br />
                              <u>e-RECEIPT (No. 9556-2345)</u></span></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="4" cellpadding="0">
                        <tr>
                          <td width="25%" align="right" class="borderedTableGrey">NAME:</td>
                          <td class="borderedTableGrey">ARIK AIR NIGERIA LIMITED</td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey">ADDRESS:</td>
                          <td class="borderedTableGrey">BL 47 ERIC MOORE RD, YABA, LAGOS. </td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey">CUSTOMER ID: </td>
                          <td class="borderedTableGrey">01-23052853-01</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="4" cellpadding="0">
                        <tr>
                          <td width="10%" align="right" bgcolor="#384B85" class="borderedTableGrey style5 style6">NO.</td>
                          <td bgcolor="#384B85" class="borderedTableGrey style5 style6">TYPE OF REVENUE</td>
                          <td width="30%" align="right" bgcolor="#384B85" class="borderedTableGrey style5 style6">AMOUNT (=N=) </td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey">1</td>
                          <td class="borderedTableGrey"> TICKET SALE CHARGE (TSC)</td>
                          <td align="right" class="borderedTableGrey"> 50,000,000.00</td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey">2</td>
                          <td class="borderedTableGrey">CARGO SERVICE CHARGE (CSC)</td>
                          <td align="right" class="borderedTableGrey"> 20,000,000.00</td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey">3</td>
                          <td class="borderedTableGrey"> EXCESS LUGGAGE CHARGE (ELC) </td>
                          <td align="right" class="borderedTableGrey">37,500,000.00</td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey"></td>
                          <td align="right" class="borderedTableGrey style4"></td>
                          <td align="right" class="borderedTableGrey style4"><hr color="black" noshade="noshade" /></td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#384B85" class="borderedTableGrey style6">&nbsp;</td>
                          <td align="right" bgcolor="#384B85" class="borderedTableGrey style4 style6">GRAND TOTAL: </td>
                          <td align="right" bgcolor="#384B85" class="borderedTableGrey style4 style6"> 107,500,000.00</td>
                        </tr>
                        <tr>
                          <td align="right" class="borderedTableGrey"></td>
                          <td align="right" class="borderedTableGrey style4"></td>
                          <td align="right" class="borderedTableGrey style4"><hr noshade="noshade" color="#000000" /></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center"><img src="../../images/barcode_sample.jpg" width="209" height="65" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center"><hr /></td>
                  </tr>
                  <tr>
                    <td align="center">PRINTED at <u>NCAA CASH OFFICE</u> at <u>MAITAMA ROAD, ABUJA</u> on <u>Thursday July 2nd, 2009</u>.</td>
                  </tr>
                  <tr>
                    <td><hr /></td>
                  </tr>
                  <tr>
                    <td align="center"><input onclick="javascript:print()" name="btnPrint2" type="button" class="orig_defaultButtonStyle" id="btnPrint2" value="Print This Receipt" /></td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td width="30%" class="defaultHeaderTextStyle">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
