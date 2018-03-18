<%@ Page Language="VB" AutoEventWireup="false" CodeFile="managelgas.aspx.vb" Inherits="modules_system_setups_metadata_managelgas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../../../../StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" width="100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Small" Text=":: Manage Existing Lgas"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">
                    &nbsp;</td>
                <td valign="top">
                    <table>
                        <tr>
                            <td style="width: 333px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text=":: Manage Lgas"></asp:Label></td>
                            <td valign="top" class="style1">
                            </td>
                            <td style="width: 250px" valign="top">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" Text=":: Create a New Lga"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 333px">
                    <asp:GridView ID="gvUsers" runat="server" AllowPaging="True" AllowSorting="True"
                        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True"
                        AutoGenerateSelectButton="True" CssClass="noBorderedMenuTable" DataKeyNames="LgaId"
                        DataSourceID="dsSqlLgas" PageSize="50" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" Width="600px">
                        <Columns>
                            <asp:BoundField DataField="LgaId" HeaderText="Id" InsertVisible="False" ReadOnly="True"
                                SortExpression="LgaId" />
                            <asp:BoundField DataField="LgaName" HeaderText="Lga" SortExpression="LgaName" />
                            <asp:TemplateField HeaderText="State" SortExpression="StateName">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="defaultFormElementStyle"
                                        DataSourceID="dsSqlStates" DataTextField="StateName" DataValueField="StateId"
                                        SelectedValue='<%# Bind("StateId") %>'>
                                    </asp:DropDownList><asp:SqlDataSource ID="dsSqlStates" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                                        SelectCommand="SELECT [StateId], [StateName] FROM [Core_State] ORDER BY [StateName]">
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Top" BackColor="#FFFBD6" 
                            ForeColor="#333333" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle CssClass="defaultFormElementStyle" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                            </td>
                            <td valign="top" class="style1">
                                &nbsp;</td>
                            <td style="width: 250px" valign="top">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="noBorderedMenuTable"
                        DataKeyNames="LgaId,StateId1,CountryId1" DataSourceID="dsSqlLgas" DefaultMode="Insert"
                        Height="50px" CellPadding="4" ForeColor="#333333" GridLines="None" Width="300px">
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle Wrap="True" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="True" 
                            BackColor="#FFFBD6" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="LgaId" HeaderText="Lga Id:" InsertVisible="False" ReadOnly="True"
                                SortExpression="LgaId" />
                            <asp:BoundField DataField="LgaName" HeaderText="Lga:" 
                                SortExpression="LgaName" />
                            <asp:TemplateField HeaderText="State:" SortExpression="StateId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StateId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="defaultFormElementStyle"
                                        DataSourceID="dsSqlStates" DataTextField="StateName" DataValueField="StateId"
                                        SelectedValue='<%# Bind("StateId") %>'>
                                    </asp:DropDownList><asp:SqlDataSource ID="dsSqlStates" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                                        SelectCommand="SELECT [StateId], [StateName] FROM [Core_State] ORDER BY [StateName]">
                                    </asp:SqlDataSource>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StateId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 333px">
                            </td>
                            <td class="style1">
                            </td>
                            <td style="width: 250px">
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;
                    <asp:SqlDataSource ID="dsSqlLgas" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                        DeleteCommand="STP_METADATA_DELETE_LGA" DeleteCommandType="StoredProcedure" InsertCommand="STP_METADATA_INSERT_LGA"
                        InsertCommandType="StoredProcedure" SelectCommand="STP_METADATA_SELECT_LGA_ALL"
                        SelectCommandType="StoredProcedure" UpdateCommand="STP_METADATA_UPDATE_LGA" UpdateCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="LgaId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LgaId" Type="Int32" />
                            <asp:Parameter Name="LgaName" Type="String" />
                            <asp:Parameter Name="StateId" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LgaName" Type="String" />
                            <asp:Parameter Name="StateId" Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
