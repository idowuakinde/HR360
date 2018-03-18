<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>HR360 | West African Seasoning Company Limited - powered by Smart Systems</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
		<!--
		.style1 {
			color: #0F0448;
			font-size: 24px;
		}
		.style2 {color: #999999}
		-->
    </style>
</head>
<body topmargin="0" leftmargin="0">
    <form name="form1" id="form1" runat="server">
      <br />
      <table border="0" align="center">
        <tr>
          <td align="center" valign="top"><img src="images/azikellogo.png" height="127" border="1" /></td>
        </tr>
        <tr>
          <td width="491"><img src="images/iTecon_logo_top.gif" width="646" height="11" /></td>
        </tr>
        
        <tr>
          <td><img src="images/HR360.azikel.logo.gif" width="646" height="75" /></td>
        </tr>
        
        <tr>
          <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr align="left" valign="top">
              <td><table width="100%" height="172" border="0" class="borderedTable">
                <tr>
                  <td colspan="2" align="center" valign="top" class="pageHeaderStyleAMMA style1">Please log in 
                    <hr /></td>
                </tr>
                <tr>
                  <td colspan="2" align="right" valign="top"><div align="center">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                  </div></td>
                </tr>
                <tr>
                  <td width="40%" align="right" valign="top">User name: </td>
                  <td valign="top"><asp:TextBox ID="txtUsername" runat="server" Columns="22" CssClass="defaultFormElementStyle">idowu.akinde</asp:TextBox>                  </td>
                </tr>
                <tr>
                  <td align="right" valign="top">Password:</td>
                  <td valign="top"><asp:TextBox ID="txtPassword" runat="server" Columns="22" CssClass="defaultFormElementStyle"
                      TextMode="Password"></asp:TextBox>                  </td>
                </tr>
                <tr>
                  <td align="right" valign="top">Log in as:</td>
                  <td valign="top"> <asp:DropDownList ID="ddlRole" runat="server" CssClass="defaultFormElementStyle" datasourceid="dsSqlRoles" DataTextField="RoleName" DataValueField="RoleId"> </asp:DropDownList>
                    <asp:SqlDataSource ID="dsSqlRoles" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                      SelectCommand="STP_METADATA_SELECT_ROLE_ALL" SelectCommandType="StoredProcedure"> </asp:SqlDataSource> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                  <td align="right"> </td>
                  <td><asp:Button ID="btnLogin" runat="server" CssClass="loginButtonStyle" Text="Log In" />                  
&nbsp; &nbsp;&nbsp;
<input name="reset" type="reset" class="loginButtonStyle" id="btnReset2"
                      value="Reset" /> </td>
                </tr>
                <tr>
                  <td align="right"></td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td align="center">powered by:</td>
            </tr>
            <tr height="5">
              <td height="5" align="center"></td>
            </tr>
            <tr valign="middle">
              <td align="center"><a href="http://www.smartsystems-ng.com/" target="_blank"> <img src="images/smartsystems_logo.gif" width="62" height="60" border="0" /><br />Smart Systems</a> </td>
            </tr>
            <tr valign="middle">
              <td align="center">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
</form>
</body>
</html>
