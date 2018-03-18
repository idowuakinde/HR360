<%@ Page Language="VB" AutoEventWireup="false" CodeFile="notify_debtors.aspx.vb" Inherits="modules_system_setups_metadata_manage_customers_notify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">
    <form id="form1" runat="server">
    <div>
        <table border="0" width="100%">
            <tr>
                <td colspan="2"><span class="pageHeaderStyleAMMA">&nbsp;:: Send Instant Notifications to Debtor
                    Airlines</span></td>
            </tr>
            <tr>
                <td width="3%">&nbsp;
                    </td>
                <td><table width="100%" border="0">
                  <tr>
                    <td width="15%" align="left"><strong>Select target group:</strong></td>
                    <td style="width: 276px">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="defaultFormElementStyle">
                            <asp:ListItem Value="1">Airlines who are already owing</asp:ListItem>
                            <asp:ListItem Value="2">Airlines who will be due for payment within 1 week or less</asp:ListItem>
                            <asp:ListItem Value="3">Airlines who will be due for payment within 2 weeks or less</asp:ListItem>
                            <asp:ListItem Value="3">Airlines who will be due for payment within 1 month or less</asp:ListItem>
                        </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" style="height: 22px">&nbsp;</td>
                    <td style="width: 276px; height: 22px"><asp:Button ID="btnGet" runat="server" Text="Get Customers" CssClass="loginButtonStyle" />&nbsp;</td>
                  </tr>
                    <tr>
                      <td align="left" colspan="2"><hr color="black" /></td>
                    </tr>
                    <tr>
                      <td align="left">&nbsp;</td>
                      <td align="left"><asp:Button ID="btnSend" runat="server" Text="Send Notifications" CssClass="loginButtonStyle" /></td>
                    </tr>
                    <tr>
                      <td align="left" colspan="2"><hr color="black" /></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2">
                            <asp:GridView ID="gvCustomers" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                CssClass="noBorderedMenuTable" DataKeyNames="customercode" DataSourceID="dsSqlCustomers"
                                Width="900px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                                ShowFooter="True">
                                <RowStyle HorizontalAlign="Left" VerticalAlign="Top" BackColor="#F7F6F3" 
                                    ForeColor="#333333" />
                                <Columns>
                                    <asp:TemplateField HeaderText="S/N">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text="<%# serial %>"></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Right" />
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="E-mail?">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SMS?">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked="True" />                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="customercode" HeaderText="Airline Code" 
                                        SortExpression="customercode" >
                                        <ItemStyle VerticalAlign="Middle" />                                    </asp:BoundField>
                                    <asp:BoundField DataField="customername" HeaderText="Airline Name" 
                                        SortExpression="customername" >
                                        <ItemStyle VerticalAlign="Middle" />                                    </asp:BoundField>
                                    <asp:BoundField DataField="billingAddress" HeaderText="Billing Address" 
                                        SortExpression="billingAddress" FooterText="TOTAL DEBT OWED:" >
                                        <FooterStyle HorizontalAlign="Right" Font-Size="Small" />
                                        <ItemStyle VerticalAlign="Middle" />                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Amount Owed" SortExpression="cuurentBal">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# FormatNumber(DataBinder.Eval(Container.DataItem, "currentBal").ToString, 2) %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:Label ID="lblTotalOwed" runat="server" Text='<%# FormatNumber(total, 2) %>'></asp:Label>
                                        </FooterTemplate>
                                        <FooterStyle HorizontalAlign="Right" Font-Size="Small" />
                                        <HeaderStyle HorizontalAlign="Right" />
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle CssClass="defaultFormElementStyle" BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="dsSqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                                SelectCommand="select AirlineCode as CustomerCode, UPPER(AirlineName + ' Airways (Code: ' + ShortCode + ')') as CustomerName, BillingAddress, CurrentBal from dbo.TEMPDebtor">                            </asp:SqlDataSource>                        </td>
                    </tr>
                    
                </table>                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
