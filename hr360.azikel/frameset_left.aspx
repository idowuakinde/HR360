<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frameset_left.aspx.vb" Inherits="frameset_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
<!--
.style2 {
	font-size: 12px;
	font-weight: bold;
}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
    </style>
	<script language="JavaScript" type="text/javascript" src="inc_functions_js.js"></script>
</head>
<body topmargin="2" leftmargin="4" marginheight="0" marginwidth="0" <% If StateBag.SessionState.Rolename = "" Then %> onLoad="javascript:parent.document.location.href = 'default.aspx';" <% End If %> >
    <form id="form1" runat="server">
      <table width="100%" border="0" cellspacing="0" cellpadding="3">
        <tr>
          <td colspan="2"><span class="style2">
          <asp:Label ID="lblName" runat="server" ForeColor="#FD0100">FullName</asp:Label></span></td>
        </tr>
          
        <tr>
          <td colspan="2"><span class="style2">
              <asp:Label ID="lblUsername" runat="server" ForeColor="#FD0100">Role</asp:Label>&nbsp;</span></td>
        </tr>
<%  If CInt(Request.QueryString("c")) = 20 Then%>          
          <tr>
            <td>&nbsp;</td>
            <td><img alt="Your Passport Photograph" 
                    src="_uploads/photos/photo_<%= request.QueryString("d") %>.jpg" width="100" 
                    height="107" border="3" /></td>
          </tr>
<% end if %>
          <tr>
              <td width="5%">&nbsp;              </td>
              <td>
                  <a href="<%=request.QueryString("b")%>?a=<%=request.QueryString("a")%>&b=<%=request.QueryString("c")%>" target="mainFrame" class="cssReportLabel">Home</a></td>
          </tr>
<%  If CInt(Request.QueryString("c")) <> 20 Then%> 
<%  End If%> 
          <tr>
            <td>&nbsp;</td>
            <td><a href="about:blank" target="mainFrame">Help</a></td>
          </tr>
<%  If CInt(Request.QueryString("c")) = 20 Then%>
        <tr>
          <td>&nbsp;</td>
          <td><table width="170"  border="0" cellpadding="0" cellspacing="0" class="borderedTable">
              <tr bgcolor="#0F0448">
                <td align="left" valign="top" bgcolor="#FD0100"><span class="style3">&nbsp;Staff Self-Service</span></td>
            </tr>
              <tr>
                <td align="left" valign="top"><asp:GridView ID="gvStaff" runat="server" 
                        ShowHeader="False" CssClass="noBorderedMenuTable" AutoGenerateColumns="False" 
                        Width="100%">
                    <Columns>
                    <asp:TemplateField>
                      <ItemStyle ForeColor="Maroon" />        
                      <ItemTemplate>
                        <table id="Table2" cellspacing="1" cellpadding="1" width="160" border="0">
                          <tr onmouseover="javascript:ChangeRowBackgroundColor(this);" onmouseout="javascript:RevertRowBackgroundColor(this);">
                            <td width="10" nowrap="nowrap"><asp:Image ID="Image1" runat="server" ImageUrl="images/norm2.gif" /></td>
                            <td nowrap="nowrap"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.MenuUrl").ToString & "?a=" & request.QueryString("a") & "&b=" & request.QueryString("d") %>'
                                              Target="mainFrame" Text='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'
                                              ToolTip='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'> </asp:HyperLink></td>
                          </tr>
                        </table>
                      </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                  </asp:GridView></td>
              </tr>
          </table></td>
        </tr>
<% end if %>        
<%  If CInt(Request.QueryString("c")) <> 20 Then%>
        <tr>
          <td>&nbsp;</td>
          <td><table width="170"  border="0" cellpadding="0" cellspacing="0" class="borderedTable">
              <tr bgcolor="#0F0448">
                <td align="left" valign="top" bgcolor="#FD0100"><span class="style3">&nbsp;Business Intelligence</span></td>
            </tr>
              <tr>
                <td align="left" valign="top"><asp:GridView ID="gvOps" runat="server" 
                        ShowHeader="False" CssClass="noBorderedMenuTable" AutoGenerateColumns="False" 
                        Width="100%">
                    <Columns>
                    <asp:TemplateField>
                      <ItemStyle ForeColor="Maroon" />        
                      <ItemTemplate>
                        <table id="Table2" cellspacing="1" cellpadding="1" width="160" border="0">
                          <tr onmouseover="javascript:ChangeRowBackgroundColor(this);" onmouseout="javascript:RevertRowBackgroundColor(this);">
                            <td width="10" nowrap="nowrap"><asp:Image ID="Image1" runat="server" ImageUrl="images/norm2.gif" /></td>
                            <td nowrap="nowrap"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.MenuUrl") %>'
                                              Target="mainFrame" Text='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'
                                              ToolTip='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'> </asp:HyperLink></td>
                          </tr>
                        </table>
                      </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                  </asp:GridView></td>
              </tr>
          </table></td>
        </tr>
<% end if %>        
<%  If CInt(Request.QueryString("c")) <> 20 And CInt(Request.QueryString("c")) <> 18 Then%>
        <tr>
          <td>&nbsp;</td>
          <td><table width="170"  border="0" cellpadding="0" cellspacing="0" class="borderedTable">
            <tr bgcolor="#0F0448">
              <td align="left" valign="top" bgcolor="#FD0100"><span class="style3">&nbsp;Human Resources</span></td>
            </tr>
            <tr>
              <td align="left" valign="top"><asp:GridView ID="gvFinance" runat="server" 
                      ShowHeader="False" CssClass="noBorderedMenuTable" AutoGenerateColumns="False" 
                      Width="100%">
                  <Columns>
                      <asp:TemplateField>
                          <ItemStyle ForeColor="Maroon" />
                          <ItemTemplate>
                              <TABLE id="Table2" cellSpacing="1" cellPadding="1" width="160" border="0">
								<TR onmouseover="javascript:ChangeRowBackgroundColor(this);" onmouseout="javascript:RevertRowBackgroundColor(this);">
                                      <TD width="10" noWrap>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="images/norm2.gif" /></td>
                                      <TD noWrap>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.MenuUrl") %>'
                                              Target="mainFrame" Text='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'
                                              ToolTip='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'>										</asp:HyperLink></td>
                                </tr>
                              </table>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView></td>
            </tr>
          </table></td>
        </tr>
<% end if %>
<%  If CInt(Request.QueryString("c")) <> 20 And CInt(Request.QueryString("c")) <> 18 Then%>
        <tr>
          <td>&nbsp;</td>
          <td><table width="170"  border="0" cellpadding="0" cellspacing="0" class="borderedTable">
            <tr bgcolor="#0F0448">
              <td align="left" valign="top" bgcolor="#FD0100"><span class="style3">&nbsp;Payroll Administration</span></td>
            </tr>
            <tr>
              <td align="left" valign="top"><asp:GridView ID="gvTransform" runat="server" 
                      ShowHeader="False" CssClass="noBorderedMenuTable" AutoGenerateColumns="False" 
                      Width="100%">
                  <Columns>
                      <asp:TemplateField>
                          <ItemStyle ForeColor="Maroon" />
                          <ItemTemplate>
                              <TABLE id="Table2" cellSpacing="1" cellPadding="1" width="160" border="0">
								<TR onmouseover="javascript:ChangeRowBackgroundColor(this);" onmouseout="javascript:RevertRowBackgroundColor(this);">
                                      <TD width="10" noWrap>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="images/norm2.gif" /></td>
                                      <TD noWrap>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.MenuUrl") %>'
                                              Target="mainFrame" Text='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'
                                              ToolTip='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'>										</asp:HyperLink></td>
                                </tr>
                              </table>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView></td>
            </tr>
          </table></td>
        </tr>
<% end if %>
<%  If CInt(Request.QueryString("c")) <> 20 And CInt(Request.QueryString("c")) <> 18 Then%>        
        <tr>
          <td>&nbsp;</td>
          <td><table width="170"  border="0" cellpadding="0" cellspacing="0" class="borderedTable">
            <tr bgcolor="#0F0448">
              <td align="left" valign="top" bgcolor="#FD0100"><span class="style3">&nbsp;System Setups</span></td>
            </tr>
            <tr>
              <td align="left" valign="top"><asp:GridView ID="gvSystemManagement" runat="server" 
                      ShowHeader="False" CssClass="noBorderedMenuTable" AutoGenerateColumns="False" 
                      Width="100%">
                  <Columns>
                      <asp:TemplateField>
                          <ItemStyle ForeColor="Maroon" />
                      <ItemTemplate>
                              <TABLE width="160" border="0" cellPadding="1" cellSpacing="1" id="Table2">
								<TR onmouseover="javascript:ChangeRowBackgroundColor(this);" onmouseout="javascript:RevertRowBackgroundColor(this);">
                                      <TD width="10" noWrap>
                                          <asp:Image ID="Image1" runat="server" ImageUrl="images/norm2.gif" /></td>
                                      <TD noWrap>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.MenuUrl") %>'
                                              Target="mainFrame" Text='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'
                                              ToolTip='<%# DataBinder.Eval(Container, "DataItem.MenuName") %>'>										</asp:HyperLink></td>
                                </tr>
                            </table>
                      </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView></td>
            </tr>
          </table></td>
        </tr>
<% end if %>        
      </table>
</form>
</body>
</html>