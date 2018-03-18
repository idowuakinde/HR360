<%@ Page Language="VB" AutoEventWireup="false" CodeFile="upload_data.aspx.vb" Inherits="modules_misc_upload_data" %>
<%@ Register TagPrefix="dotnet"  Namespace="dotnetCHARTING" Assembly="dotnetCHARTING"%>
<%@ Import Namespace="System.Drawing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>&nbsp;:: Manual Upload - Bulk Flight Manifest Data</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">
    <form id="form1" runat="server">
<table width="1200"  border="0">
  <tr>
    <td width="999" valign="top"><span class="pageHeaderStyleAMMA">&nbsp;:: Manual Upload - Bulk Flight Manifest Data</span></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0">
      <tr>
        <td align="left" width="5%" valign="top">&nbsp;</td>
        <td align="left" valign="top">
                      <p><strong>Please select a MICROSOFT EXCEL file from your computer containing FLIGHT MANIFEST 
                          data</strong></p>
            <b><u>PLEASE NOTE</u> that the file to be uploaded must be formatted according to the pre-defined 
                template.
                      <br />&nbsp;
                <br />If in doubt, please contact the System Administrator for assistance.</b>
                      <br />
            &nbsp;</td>
      </tr>
      <tr>
        <td align="right" class="defaultHeaderTextStyle">&nbsp;</td>
        <td align="left" valign="middle" style="width: 773px">
            <asp:Label ID="lblUploadStatus" runat="server"></asp:Label>
            <br />
          &nbsp;</td>
      </tr>
      
      <tr>
        <td align="right" class="defaultHeaderTextStyle">&nbsp;</td>
        <td align="left" valign="middle" style="width: 773px">
            <asp:FileUpload ID="FileUpload1" runat="server" 
                CssClass="defaultFormElementStyle" Width="600px" />
          </td>
      </tr>
      
      <tr>
        <td align="right" class="defaultHeaderTextStyle">&nbsp;</td>
        <td align="left" valign="middle" style="width: 773px">
            <asp:Button ID="btnUpload" runat="server" Text="   Upload   &gt;   " />
          </td>
      </tr>
      
      <tr>
        <td align="right" class="defaultHeaderTextStyle">&nbsp;</td>
        <td align="left" valign="middle" style="width: 773px">
            &nbsp;</td>
      </tr>
      
      <tr>
        <td align="right" class="defaultHeaderTextStyle">&nbsp;</td>
        <td align="left" valign="middle" style="width: 773px">
            <asp:Panel ID="pnlTransferLink" runat="server" Visible="False">
                <asp:Label ID="lblProgressText" runat="server"></asp:Label>
            </asp:Panel>
          </td>
      </tr>
      
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
