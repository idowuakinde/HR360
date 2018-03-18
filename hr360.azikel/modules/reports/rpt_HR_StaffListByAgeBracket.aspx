﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="rpt_HR_StaffListByAgeBracket.aspx.vb" Inherits="modules_reports_rpt_HR_StaffListByAgeBracket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="../../inc_functions_js.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" width="880" class="borderedTableGrey">
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="80%">
                    <asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Small" 
                        Text='REPORTS > HR REPORTS > STAFF LIST BY AGE BRACKET: '></asp:Label>
                  <asp:DropDownList ID="ddlChooser" runat="server" AutoPostBack="True" CssClass="defaultFormElementStyle" AppendDataBoundItems="True">
                      <asp:ListItem Value="0">ALL</asp:ListItem>
                      <asp:ListItem Value="1">Below 20 Years</asp:ListItem>
                      <asp:ListItem Value="2">20 - 25 Years</asp:ListItem>
                      <asp:ListItem Value="3">25 - 30 Years</asp:ListItem>
                      <asp:ListItem Value="4">30 - 35 Years</asp:ListItem>
                      <asp:ListItem Value="5">35 - 40 Years</asp:ListItem>
                      <asp:ListItem Value="6">40 - 45 Years</asp:ListItem>
                      <asp:ListItem Value="7">45 - 50 Years</asp:ListItem>
                      <asp:ListItem Value="8">50 - 55 Years</asp:ListItem>
                      <asp:ListItem Value="9">55 - 60 Years</asp:ListItem>
                      <asp:ListItem Value="10">60 - 65 Years</asp:ListItem>
                      <asp:ListItem Value="11">65 Years and Above</asp:ListItem>
                  </asp:DropDownList>
                    <br />
                    <br />
                    PRINTED ON: <b><%=FormatDateTime(Now, DateFormat.LongDate).ToUpper & " " & FormatDateTime(Now, DateFormat.LongTime).ToUpper%></b><br />&nbsp;
                  </td>
                  <td align="right" valign="top"><input name="btnPrint" type="button" class="defaultButtonStyle" id="btnPrint" value="   Print This Page   " onclick="javascript:PrintPage()" /></td>
                </tr>
              </table></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvUsers" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                        CssClass="noBorderedMenuTable" 
                        DataSourceID="dsSqlGetData" Width="100%" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        EmptyDataText="&amp;nbsp;&lt;br /&gt;No records to display.&lt;br /&gt;&amp;nbsp;" 
                        ShowFooter="True" >
                        <Columns>
                            <asp:TemplateField HeaderText="SN">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text="<%# serial + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="StaffGUID" HeaderText="StaffGUID"
                                SortExpression="StaffGUID" 
                                Visible="False" />
                            <asp:BoundField DataField="StaffCode" HeaderText="Staff Code" 
                                SortExpression="StaffCode" >
                            </asp:BoundField>
                            <asp:BoundField DataField="StaffName" HeaderText="Staff Name" 
                                SortExpression="StaffName" ReadOnly="True" >
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Common.GetMaleOrFemale(Databinder.Eval(Container.DataItem, "Gender").ToString) %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="LocationName" HeaderText="Location" 
                                SortExpression="LocationName" />
                            <asp:BoundField DataField="Department" HeaderText="DeptCode" 
                                SortExpression="Department" Visible="False" />
                            <asp:BoundField DataField="JobLevelName" HeaderText="Job Level " 
                                SortExpression="JobLevelName" />
                            <asp:BoundField DataField="DesignationName" HeaderText="Designation" 
                                SortExpression="DesignationName" />
                            <asp:TemplateField HeaderText="Age" 
                                SortExpression="Age">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" 
                                        Text='<%# Eval("Age").ToString & " Years" %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                       </Columns>
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Top" BackColor="#FFFBD6" 
                            ForeColor="#333333" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Top" />
                        <EditRowStyle CssClass="defaultFormElementStyle" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                            Font-Size="X-Small" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsSqlGetData" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                        SelectCommand="">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlChooser" Name="LocationName" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <hr color="black" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>