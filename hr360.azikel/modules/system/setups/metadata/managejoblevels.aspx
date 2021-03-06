﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="managejoblevels.aspx.vb" Inherits="modules_system_setups_metadata_managejoblevels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../../../../StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" width="100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Size="Small" 
                        Text=":: Manage Existing Grade Levels"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="gvUsers" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True"
                        CssClass="noBorderedMenuTable" DataKeyNames="JobLevelId" 
                        DataSourceID="dsSqlGetData" Width="1050px" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        
                        EmptyDataText="&amp;nbsp;&lt;br /&gt;No records to display.&lt;br /&gt;&amp;nbsp;">
                        <Columns>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" 
                                SortExpression="JobLevelId">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("JobLevelId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("JobLevelId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Grade Level" SortExpression="JobLevelName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Columns="30" 
                                        Text='<%# Bind("JobLevelName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("JobLevelName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BASIC" SortExpression="Basic">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox7" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Basic") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label8" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Basic"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HOUSING" SortExpression="Housing">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox6" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Housing") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label7" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Housing"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TRANSPORT" SortExpression="Transport">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox5" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Transport") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label6" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Transport"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LUNCH" SortExpression="Lunch">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox4" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Lunch") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label5" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Lunch"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CLOTHING" SortExpression="Clothing">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox3" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Clothing") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label4" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Clothing"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UTILITY" SortExpression="Utility">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox2" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Utility") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label3" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "Utility"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MONTHLY" SortExpression="MonthlyTotal">
                                <ItemTemplate>
                                    <b>N</b>
                                    <asp:Label ID="Label9" runat="server" 
                                        Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "MonthlyTotal"), Double), 2) %>' 
                                        Font-Bold="True"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ANNUAL" SortExpression="AnnualTotal">
                                <ItemTemplate>
                                    <b>N </b>
                                    <asp:Label ID="Label10" runat="server" 
                                        Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "AnnualTotal"), Double), 2) %>' 
                                        Font-Bold="True"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Remark" HeaderText="Remark"
                                SortExpression="Remark" Visible="False" />
                        </Columns>
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#FFFBD6" 
                            ForeColor="#333333" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Top" />
                        <EditRowStyle CssClass="defaultFormElementStyle" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsSqlGetData" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                        SelectCommand="SELECT [JobLevelId], [JobLevelName], [ShortName], [Basic], [Housing], [Transport], [Lunch], [Clothing], [Utility], [UtilityAutoCalc], [Basic] + Housing + Transport + Lunch + Clothing + Utility AS MonthlyTotal, ([Basic] + Housing + Transport + Lunch + Clothing + Utility) * 12 as AnnualTotal, [Remark] FROM [dbo].[HR_JobLevel] ORDER BY JoblevelName " 
                        DeleteCommand="STP_HR_DELETE_HR_JobLevel" 
                        DeleteCommandType="StoredProcedure" 
                        InsertCommand="STP_HR_INSERT_HR_JobLevel" 
                        InsertCommandType="StoredProcedure" 
                        UpdateCommand="STP_HR_UPDATE_HR_JobLevel" 
                        UpdateCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="JobLevelId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="JobLevelId" Type="Int32" />
                            <asp:Parameter Name="JobLevelName" Type="String" />
                            <asp:Parameter Name="ShortName" Type="String" />
                            <asp:Parameter Name="Basic" Type="Decimal" />
                            <asp:Parameter Name="Housing" Type="Decimal" />
                            <asp:Parameter Name="Transport" Type="Decimal" />
                            <asp:Parameter Name="Lunch" Type="Decimal" />
                            <asp:Parameter Name="Clothing" Type="Decimal" />
                            <asp:Parameter Name="Utility" Type="Decimal" />
                            <asp:Parameter Name="UtilityAutoCalc" Type="Decimal" />
                            <asp:Parameter Name="Remark" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Direction="InputOutput" Name="JobLevelId" Type="Int32" />
                            <asp:Parameter Name="JobLevelName" Type="String" />
                            <asp:Parameter Name="ShortName" Type="String" />
                            <asp:Parameter Name="Basic" Type="Decimal" />
                            <asp:Parameter Name="Housing" Type="Decimal" />
                            <asp:Parameter Name="Transport" Type="Decimal" />
                            <asp:Parameter Name="Lunch" Type="Decimal" />
                            <asp:Parameter Name="Clothing" Type="Decimal" />
                            <asp:Parameter Name="Utility" Type="Decimal" />
                            <asp:Parameter Name="UtilityAutoCalc" Type="Decimal" />
                            <asp:Parameter Name="Remark" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
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
                <td colspan="2">
                    <br />
                    <asp:Label ID="lblAddNew" runat="server" Font-Bold="True" Font-Size="Small" 
                        Text=":: Add a New Grade Level"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td><asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="JobLevelId"
                        DataSourceID="dsSqlGetData" DefaultMode="Insert" Width="600px" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        AutoGenerateInsertButton="True">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" 
                            BackColor="#FFFBD6" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" Width="180px" 
                            VerticalAlign="Top" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="JobLevelId" HeaderText="JobLevelId" 
                                InsertVisible="False" ReadOnly="True"
                                SortExpression="JobLevelId" />
                            <asp:TemplateField HeaderText="Grade Level:" SortExpression="JobLevelName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("JobLevelName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Columns="40" 
                                        Text='<%# Bind("JobLevelName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("JobLevelName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Basic Salary:" SortExpression="Basic">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Basic") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox4" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Basic") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Basic") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Housing Allowance:" SortExpression="Housing">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Housing") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox5" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Housing") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Housing") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Transport Allowance:" SortExpression="Transport">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Transport") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox6" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Transport") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Transport") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lunch Allowance:" SortExpression="Lunch">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Lunch") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox7" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Lunch") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Lunch") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Clothing Allowance:" SortExpression="Clothing">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Clothing") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox8" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Clothing") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Clothing") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Utility Allowance:" SortExpression="Utility">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Utility") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox9" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Utility") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Utility") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remark:" SortExpression="Remark">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Remark") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Columns="50" Rows="5" 
                                        Text='<%# Bind("Remark") %>' TextMode="MultiLine" 
                                        CssClass="defaultFormElementStyle"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                &nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
