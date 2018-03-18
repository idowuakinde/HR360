<%@ Page Language="VB" AutoEventWireup="false" CodeFile="testlan.aspx.vb" Inherits="modules_system_diagnostics_testlan" %>

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
                <td colspan="2">
                    <asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Small" Text=":: Diagnostics - Local Network Connectivity Test"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">
                    &nbsp;</td>
                <td>
                    <table border="0" cellpadding="2" cellspacing="2" class="borderedTable" width="100%">
                        <tr>
                            <td>
                                To verify the underlying <strong>Local Network</strong> connection, click
                                <asp:LinkButton ID="btnLanTest" runat="server">here</asp:LinkButton>:</td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td colspan="2" style="width: 100px">
                                            <asp:Label ID="lblMessageHeaderSuccess" runat="server" Width="231px" EnableViewState="False" ForeColor="Green" Visible="False">Ping was successful. Details below:</asp:Label><asp:Label ID="lblMessageHeaderFailure" runat="server" Width="240px" EnableViewState="False" ForeColor="Red" Visible="False">Ping was not successful. Details below:</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblHostname" runat="server" EnableViewState="False" Width="500px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblRoundTripTime" runat="server" EnableViewState="False" Width="231px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblTimeToLive" runat="server" EnableViewState="False" Width="231px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblDontFragment" runat="server" EnableViewState="False" Width="231px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 14px">
                                        </td>
                                        <td style="width: 7px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblBufferSize" runat="server" EnableViewState="False" Width="231px"></asp:Label></td>
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
