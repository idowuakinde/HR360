<%@ Page Language="VB" AutoEventWireup="false" CodeFile="testinternet.aspx.vb" Inherits="modules_system_diagnostics_testinternet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../../../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="20" leftmargin="20">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="2" cellspacing="2" width="100%">
            <tr>
                <td colspan="2" style="height: 20px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Text=":: Diagnostics - Internet Connectivity Test"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">
                    &nbsp;</td>
                <td>
                    <table border="0" cellpadding="2" cellspacing="2" class="borderedTable" width="100%">
                        <tr>
                            <td>
                                To verify the underlying <strong>Internet</strong> connection, click
                                <asp:LinkButton ID="btnInternetTest" runat="server">here</asp:LinkButton>:</td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td colspan="2" style="width: 100px">
                                            <asp:Label ID="lblMessageHeaderSuccess" runat="server" ForeColor="Green" Visible="False"
                                                Width="231px" EnableViewState="False">Ping was successful. Details below:</asp:Label><asp:Label ID="lblMessageHeaderFailure"
                                                    runat="server" ForeColor="Red" Visible="False" Width="240px" EnableViewState="False">Ping was not successful. Details below:</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblHostname" runat="server" Width="500px" EnableViewState="False"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblRoundTripTime" runat="server" Width="231px" EnableViewState="False"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblTimeToLive" runat="server" Width="231px" EnableViewState="False"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblDontFragment" runat="server" Width="231px" EnableViewState="False"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblBufferSize" runat="server" Width="231px" EnableViewState="False"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
