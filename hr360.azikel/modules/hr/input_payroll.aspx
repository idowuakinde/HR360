<%@ Page Language="VB" AutoEventWireup="false" CodeFile="input_payroll.aspx.vb" Inherits="modules_hr_input_payroll" %>

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
                        Text=":: Edit Payroll Info"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">&nbsp;
                    </td>
                <td>
                    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"
                        CssClass="noBorderedMenuTable" 
                        DataSourceID="dsSqlGetData" Width="1800px" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        EmptyDataText="&amp;nbsp;&lt;br /&gt;No records to display.&lt;br /&gt;&amp;nbsp;" 
                        DataKeyNames="StaffPayrollId" 
                        AutoGenerateSelectButton="True" AllowSorting="True" AllowPaging="True" 
                        PageSize="25">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="30px" 
                                        ImageUrl='<%# "..\..\_uploads\photos\photo_" & Databinder.Eval(Container.DataItem, "StaffGUID").ToString & ".jpg" %>' 
                                        Width="30px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="StaffPayrollId" HeaderText="StaffPayrollId" 
                                InsertVisible="False" ReadOnly="True" SortExpression="StaffPayrollId" 
                                Visible="False" />
                            <asp:TemplateField HeaderText="Staff Id" SortExpression="StaffId">
                                <EditItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("StaffId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("StaffId") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Staff Details" SortExpression="StaffDetails">
                                <EditItemTemplate>
                                    <asp:Label ID="Label12_2" runat="server" Text='<%# Eval("StaffDetails") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3_2" runat="server" Text='<%# Eval("StaffDetails") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                           <asp:TemplateField HeaderText="Basic" SortExpression="BasicAllowance">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox1" runat="server" Columns="10" 
                                        Text='<%# Bind("BasicAllowance") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "BasicAllowance"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Functional" SortExpression="FunctionAllowance">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox2" runat="server" Columns="10" 
                                        Text='<%# Bind("FunctionAllowance") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "FunctionAllowance"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Housing" 
                                SortExpression="HousingAllowanceTaxable">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox4" runat="server" Columns="10" 
                                        Text='<%# Bind("HousingAllowanceTaxable") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" 
                                        Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "HousingAllowanceTaxable"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Transport" 
                                SortExpression="TransportAllowanceTaxable">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox6" runat="server" Columns="10" 
                                        Text='<%# Bind("TransportAllowanceTaxable") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" 
                                        Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "TransportAllowanceTaxable"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Housing (Non-Taxable)" 
                                SortExpression="HousingAllowance">
                                <EditItemTemplate>
                                    <b>N
                                    <asp:Label ID="Label13" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "HousingAllowance"), Double), 2) %>'></asp:Label>
                                    </b>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <b>N
                                    <asp:Label ID="Label5" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "HousingAllowance"), Double), 2) %>'></asp:Label>
                                    </b>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Transport (Non-Taxable)" 
                                SortExpression="TransportAllowance">
                                <EditItemTemplate>
                                    <b>N
                                    <asp:Label ID="Label14" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "TransportAllowance"), Double), 2) %>'></asp:Label>
                                    </b>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <b>N
                                    <asp:Label ID="Label12" runat="server" Text='<%# FormatNumber(CType(Databinder.Eval(Container.DataItem, "TransportAllowance"), Double), 2)  %>'></asp:Label>
                                    </b>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Clothing" SortExpression="ClothingAllowance">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox7" runat="server" Columns="10" 
                                        Text='<%# Bind("ClothingAllowance") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "ClothingAllowance"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Utility" SortExpression="UtilityAllowance">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox8" runat="server" Columns="10" 
                                        Text='<%# Bind("UtilityAllowance") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "UtilityAllowance"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lunch" SortExpression="LunchAllowance">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox9" runat="server" Columns="10" 
                                        Text='<%# Bind("LunchAllowance") %>' 
                                        CssClass="defaultFormElementStyleRightAligned"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "LunchAllowance"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MONTHLY" SortExpression="GrossPay">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" 
                                        Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "GrossPay"), Double), 2) %>' 
                                        Font-Bold="True"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ANNUAL" >
                                <ItemTemplate>
                                    <asp:Label ID="Label11_2" runat="server" 
                                        Text='<%# "N " & FormatNumber(CType(Databinder.Eval(Container.DataItem, "GrossPay"), Double) *12, 2) %>' 
                                        Font-Bold="True"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remark" SortExpression="Remark" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Columns="50" 
                                        CssClass="defaultFormElementStyle" Rows="5" Text='<%# Bind("Remark") %>' 
                                        TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#FFFBD6" 
                            ForeColor="#333333" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Right" VerticalAlign="Top" />
                        <EditRowStyle CssClass="defaultFormElementStyle" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsSqlGetData" runat="server" ConnectionString="<%$ ConnectionStrings:iTecon %>"
                        SelectCommand="SELECT a.StaffPayrollId, a.StaffId, b.[StaffGUID], UPPER(b.[Surname]) + ' ' + UPPER(b.[OtherNames]) + ' | ' + UPPER(b.[StaffCode]) + ' | (' + UPPER(c.[DepartmentName]) + ' Department)' AS StaffDetails, BasicAllowance, FunctionAllowance, HousingAllowance, HousingAllowanceTaxable, TransportAllowance, TransportAllowanceTaxable, ClothingAllowance, UtilityAllowance, LunchAllowance, (BasicAllowance + FunctionAllowance + HousingAllowance+ HousingAllowanceTaxable + TransportAllowance + TransportAllowanceTaxable + ClothingAllowance + UtilityAllowance + LunchAllowance) AS GrossPay, a.Remark FROM dbo.[HR_Staff_Payroll] a INNER JOIN dbo.[HR_Staff_Base] b ON a.StaffId = b.StaffId INNER JOIN dbo.[Core_Department] c ON b.Department = left(c.DepartmentName, charindex('.', c.DepartmentName) - 1) ORDER BY StaffDetails " 
                        DeleteCommand="STP_HR_DELETE_HR_Staff_Payroll" 
                        DeleteCommandType="StoredProcedure" 
                        InsertCommand="STP_HR_INSERT_HR_Staff_Payroll" 
                        InsertCommandType="StoredProcedure" 
                        UpdateCommand="STP_HR_UPDATE_HR_Staff_Payroll" 
                        UpdateCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="StaffPayrollId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="StaffPayrollId" Type="Int32" />
                            <asp:Parameter Name="StaffId" Type="Int32" />
                            <asp:Parameter Name="BasicAllowance" Type="Decimal" />
                            <asp:Parameter Name="FunctionAllowance" Type="Decimal" />
                            <%--<asp:Parameter Name="HousingAllowance" Type="Decimal" />--%>
                            <asp:Parameter Name="HousingAllowanceTaxable" Type="Decimal" />
                            <%--<asp:Parameter Name="TransportAllowance" Type="Decimal" />--%>
                            <asp:Parameter Name="TransportAllowanceTaxable" Type="Decimal" />
                            <asp:Parameter Name="ClothingAllowance" Type="Decimal" />
                            <asp:Parameter Name="UtilityAllowance" Type="Decimal" />
                            <asp:Parameter Name="LunchAllowance" Type="Decimal" />
                            <asp:Parameter Name="Remark" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Direction="InputOutput" Name="StaffPayrollId" Type="Int32" />
                            <asp:Parameter Name="StaffId" Type="Int32" />
                            <asp:Parameter Name="BasicAllowance" Type="Decimal" />
                            <asp:Parameter Name="FunctionAllowance" Type="Decimal" />
                            <asp:Parameter Name="HousingAllowance" Type="Decimal" />
                            <asp:Parameter Name="HousingAllowanceTaxable" Type="Decimal" />
                            <asp:Parameter Name="TransportAllowance" Type="Decimal" />
                            <asp:Parameter Name="TransportAllowanceTaxable" Type="Decimal" />
                            <asp:Parameter Name="ClothingAllowance" Type="Decimal" />
                            <asp:Parameter Name="UtilityAllowance" Type="Decimal" />
                            <asp:Parameter Name="LunchAllowance" Type="Decimal" />
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
                <td colspan="2">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
