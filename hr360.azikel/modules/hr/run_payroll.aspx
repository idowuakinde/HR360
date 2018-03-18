<%@ Page Language="VB" AutoEventWireup="false" CodeFile="run_payroll.aspx.vb" Inherits="modules_hr_run_payroll" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" width="100%">
            <tr>
                <td colspan="2">
						<asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Small" 
                        Text=":: Run Payroll"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">&nbsp;
                    </td>
                <td>
                    <br />
                    Please confirm to <b>RUN PAYROLL</b> for the month of <b>
                        <asp:DropDownList ID="ddlPayrollMonths" runat="server" 
                        CssClass="defaultFormElementStyle">
                        </asp:DropDownList> <%=Now.Year%></b>.<br />
                    <br />
                    <asp:Button ID="btnContinue" runat="server" Text="         RUN &gt;         " 
                        CssClass="defaultButtonStyle" />&nbsp;<asp:Button ID="btnCancel" 
                        runat="server" Text="  Cancel  " CssClass="defaultButtonStyle" 
                        Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <hr color="black" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    </td>
            </tr>
            <tr>
                <td colspan="2">
						<asp:Label ID="lblHeaderStatus" runat="server" Font-Bold="True" Font-Size="Small" 
                        Text=":: Payroll Engine Status" Visible="False"></asp:Label>
                    </td>
            </tr>
<tr>
                <td width="3%">&nbsp;
                    </td>
                <td>
                    <br />
                    <asp:Label ID="lblStatus" runat="server" Visible="False" Text="The Payroll Processing Engine is currently in 'INTERMEDIATE' state. <br>&nbsp;<br>Please click <b>'ACCEPT PAYROLL DATA'</b> below to finally SAVE AND CONCLUDE the pending Payroll Data."></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnConclude" runat="server" Text="    ACCEPT PAYROLL DATA &gt;    " 
                        CssClass="defaultButtonStyle" Visible="False" />&nbsp;<asp:Button ID="btnCancel2" 
                        runat="server" Text="  ABORT  " CssClass="defaultButtonStyle" 
                        Visible="False" />
                </td>
            </tr>            
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Panel ID="pnlProvisionalReports" runat="server" Visible="False">
                        <table width="100%" border="0" cellspacing="0" cellpadding="3">
                            <tr>
                                <td colspan="2" align="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" align="left">
                                    While the Payroll Engine lies in this &#39;<strong>INTERMEDIATE</strong>&#39; state, you can&nbsp; access the following <strong>PROVISIONAL Reports:</strong></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="3%" align="center">
                                    &raquo;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvLedger" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL PAYROLL LEDGER REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvAllowances" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL SPECIAL ALLOWANCES REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvDeductions" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL SPECIAL DEDUCTIONS REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvLoans" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL LOANS REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvCoop" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL CO-OP REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <span style="width: 773px">
                                    <asp:HyperLink ID="hlnkProvOvertime" runat="server" CssClass="cssHyperLink" NavigateUrl="">PROVISIONAL OVERTIME REPORT</asp:HyperLink>
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
