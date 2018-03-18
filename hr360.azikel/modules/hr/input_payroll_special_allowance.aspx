﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="input_payroll_special_allowance.aspx.vb" Inherits="modules_hr_input_payroll_special_allowance" %>

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
                        Text=":: Edit Previous Special Allowances"></asp:Label></td>
            </tr>
            <tr>
                <td width="3%">&nbsp;
                    </td>
                <td>
                    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"
                        CssClass="noBorderedMenuTable" 
                        DataSourceID="dsSqlGetData" Width="1200px" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        EmptyDataText="&amp;nbsp;&lt;br /&gt;No records to display.&lt;br /&gt;&amp;nbsp;" 
                        DataKeyNames="SpecialAllowanceId" 
                        AutoGenerateSelectButton="True" AutoGenerateDeleteButton="True" 
                        AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="SpecialAllowanceId" HeaderText="Id" 
                                InsertVisible="False" ReadOnly="True" 
                                SortExpression="SpecialAllowanceId" />
                            <asp:TemplateField HeaderText="Staff Id" SortExpression="StaffId">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList5_2" runat="server" 
                                        CssClass="defaultFormElementStyle" DataSourceID="dsSqlGetSingleStaff_2" 
                                        DataTextField="StaffDetails" DataValueField="StaffCode" 
                                        SelectedValue='<%# Bind("Remark") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="dsSqlGetSingleStaff_2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:iTecon %>" 
                                        SelectCommand="SELECT [StaffCode], UPPER([Surname]) + ' ' + UPPER([OtherNames]) + ' | ' + UPPER([StaffCode]) + ' | (' + UPPER([DepartmentName]) + ' Department)' AS StaffDetails FROM [HR_Staff_Base] a INNER JOIN [Core_Department] b ON a.Department = left(b.DepartmentName, charindex('.', b.DepartmentName) - 1) ORDER BY StaffDetails">
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StaffDetails") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Entry Date" SortExpression="EntryDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Columns="30" 
                                        Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Common.GetFriendlyDate(CType(Databinder.Eval(Container.DataItem, "EntryDate"), Date)) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Effective Month" SortExpression="EffectiveMonth">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlMonth_2" runat="server" 
                                        CssClass="defaultFormElementStyle" 
                                        SelectedValue='<%# Bind("EffectiveMonth") %>'>
                                        <asp:ListItem Value="1">January</asp:ListItem>
                                        <asp:ListItem Value="2">February</asp:ListItem>
                                        <asp:ListItem Value="3">March</asp:ListItem>
                                        <asp:ListItem Value="4">April</asp:ListItem>
                                        <asp:ListItem Value="5">May</asp:ListItem>
                                        <asp:ListItem Value="6">June</asp:ListItem>
                                        <asp:ListItem Value="7">July</asp:ListItem>
                                        <asp:ListItem Value="8">August</asp:ListItem>
                                        <asp:ListItem Value="9">September</asp:ListItem>
                                        <asp:ListItem Value="10">October</asp:ListItem>
                                        <asp:ListItem Value="11">November</asp:ListItem>
                                        <asp:ListItem Value="12">December</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="ddlYear_2" runat="server" 
                                        CssClass="defaultFormElementStyle" SelectedValue='<%# Bind("EffectiveYear") %>'>
                                        <asp:ListItem Value="2011">2011</asp:ListItem>
                                        <asp:ListItem Value="2010">2010</asp:ListItem>
                                        <asp:ListItem Value="2009">2009</asp:ListItem>
                                        <asp:ListItem Value="2008">2008</asp:ListItem>
                                        <asp:ListItem Value="2007">2007</asp:ListItem>
                                        <asp:ListItem Value="2006">2006</asp:ListItem>
                                        <asp:ListItem Value="2005">2005</asp:ListItem>
                                        <asp:ListItem Value="2004">2004</asp:ListItem>
                                        <asp:ListItem Value="2003">2003</asp:ListItem>
                                        <asp:ListItem Value="2002">2002</asp:ListItem>
                                        <asp:ListItem Value="2001">2001</asp:ListItem>
                                        <asp:ListItem Value="2000">2000</asp:ListItem>
                                        <asp:ListItem value="1999">1999</asp:ListItem>
                                        <asp:ListItem value="1998">1998</asp:ListItem>
                                        <asp:ListItem value="1997">1997</asp:ListItem>
                                        <asp:ListItem value="1996">1996</asp:ListItem>
                                        <asp:ListItem value="1995">1995</asp:ListItem>
                                        <asp:ListItem value="1994">1994</asp:ListItem>
                                        <asp:ListItem value="1993">1993</asp:ListItem>
                                        <asp:ListItem value="1992">1992</asp:ListItem>
                                        <asp:ListItem value="1991">1991</asp:ListItem>
                                        <asp:ListItem value="1990">1990</asp:ListItem>
                                        <asp:ListItem value="1989">1989</asp:ListItem>
                                        <asp:ListItem value="1988">1988</asp:ListItem>
                                        <asp:ListItem value="1987">1987</asp:ListItem>
                                        <asp:ListItem value="1986">1986</asp:ListItem>
                                        <asp:ListItem value="1985">1985</asp:ListItem>
                                        <asp:ListItem value="1984">1984</asp:ListItem>
                                        <asp:ListItem value="1983">1983</asp:ListItem>
                                        <asp:ListItem value="1982">1982</asp:ListItem>
                                        <asp:ListItem value="1981">1981</asp:ListItem>
                                        <asp:ListItem value="1980">1980</asp:ListItem>
                                        <asp:ListItem value="1979">1979</asp:ListItem>
                                        <asp:ListItem value="1978">1978</asp:ListItem>
                                        <asp:ListItem value="1977">1977</asp:ListItem>
                                        <asp:ListItem value="1976">1976</asp:ListItem>
                                        <asp:ListItem value="1975">1975</asp:ListItem>
                                        <asp:ListItem value="1974">1974</asp:ListItem>
                                        <asp:ListItem value="1973">1973</asp:ListItem>
                                        <asp:ListItem value="1972">1972</asp:ListItem>
                                        <asp:ListItem value="1971">1971</asp:ListItem>
                                        <asp:ListItem value="1970">1970</asp:ListItem>
                                        <asp:ListItem value="1969">1969</asp:ListItem>
                                        <asp:ListItem value="1968">1968</asp:ListItem>
                                        <asp:ListItem value="1967">1967</asp:ListItem>
                                        <asp:ListItem value="1966">1966</asp:ListItem>
                                        <asp:ListItem value="1965">1965</asp:ListItem>
                                        <asp:ListItem value="1964">1964</asp:ListItem>
                                        <asp:ListItem value="1963">1963</asp:ListItem>
                                        <asp:ListItem value="1962">1962</asp:ListItem>
                                        <asp:ListItem value="1961">1961</asp:ListItem>
                                        <asp:ListItem value="1960">1960</asp:ListItem>
                                        <asp:ListItem value="1959">1959</asp:ListItem>
                                        <asp:ListItem value="1958">1958</asp:ListItem>
                                        <asp:ListItem value="1957">1957</asp:ListItem>
                                        <asp:ListItem value="1956">1956</asp:ListItem>
                                        <asp:ListItem value="1955">1955</asp:ListItem>
                                        <asp:ListItem value="1954">1954</asp:ListItem>
                                        <asp:ListItem value="1953">1953</asp:ListItem>
                                        <asp:ListItem value="1952">1952</asp:ListItem>
                                        <asp:ListItem value="1951">1951</asp:ListItem>
                                        <asp:ListItem value="1950">1950</asp:ListItem>
                                        <asp:ListItem value="1949">1949</asp:ListItem>
                                        <asp:ListItem value="1948">1948</asp:ListItem>
                                        <asp:ListItem value="1947">1947</asp:ListItem>
                                        <asp:ListItem value="1946">1946</asp:ListItem>
                                        <asp:ListItem value="1945">1945</asp:ListItem>
                                        <asp:ListItem value="1944">1944</asp:ListItem>
                                        <asp:ListItem value="1943">1943</asp:ListItem>
                                        <asp:ListItem value="1942">1942</asp:ListItem>
                                        <asp:ListItem value="1941">1941</asp:ListItem>
                                        <asp:ListItem value="1940">1940</asp:ListItem>
                                        <asp:ListItem value="1939">1939</asp:ListItem>
                                        <asp:ListItem value="1938">1938</asp:ListItem>
                                        <asp:ListItem value="1937">1937</asp:ListItem>
                                        <asp:ListItem value="1936">1936</asp:ListItem>
                                        <asp:ListItem value="1935">1935</asp:ListItem>
                                        <asp:ListItem value="1934">1934</asp:ListItem>
                                        <asp:ListItem value="1933">1933</asp:ListItem>
                                        <asp:ListItem value="1932">1932</asp:ListItem>
                                        <asp:ListItem value="1931">1931</asp:ListItem>
                                        <asp:ListItem value="1930">1930</asp:ListItem>
                                        <asp:ListItem value="1929">1929</asp:ListItem>
                                        <asp:ListItem value="1928">1928</asp:ListItem>
                                        <asp:ListItem value="1927">1927</asp:ListItem>
                                        <asp:ListItem value="1926">1926</asp:ListItem>
                                        <asp:ListItem value="1925">1925</asp:ListItem>
                                        <asp:ListItem value="1924">1924</asp:ListItem>
                                        <asp:ListItem value="1923">1923</asp:ListItem>
                                        <asp:ListItem value="1922">1922</asp:ListItem>
                                        <asp:ListItem value="1921">1921</asp:ListItem>
                                        <asp:ListItem value="1920">1920</asp:ListItem>
                                        <asp:ListItem value="1919">1919</asp:ListItem>
                                        <asp:ListItem value="1918">1918</asp:ListItem>
                                        <asp:ListItem value="1917">1917</asp:ListItem>
                                        <asp:ListItem value="1916">1916</asp:ListItem>
                                        <asp:ListItem value="1915">1915</asp:ListItem>
                                        <asp:ListItem value="1914">1914</asp:ListItem>
                                        <asp:ListItem value="1913">1913</asp:ListItem>
                                        <asp:ListItem value="1912">1912</asp:ListItem>
                                        <asp:ListItem value="1911">1911</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" 
                                        Text='<%# MonthName(CType(Databinder.Eval(Container.DataItem, "EffectiveMonth"), Int32), false) %>'></asp:Label>
                                    &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("EffectiveYear") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount" SortExpression="Amount">
                                <EditItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox5" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Amount") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    N
                                    <asp:Label ID="Label5" runat="server" 
                                        Text='<%# FormatNumber(CType(DataBinder.Eval(Container.DataItem, "Amount"), Double), 2) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Purpose" SortExpression="Purpose">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Columns="30" 
                                        Text='<%# Bind("Purpose") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Purpose") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" 
                                Visible="False" />
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
                        SelectCommand="SELECT [SpecialAllowanceId], a.[StaffId], UPPER(b.[Surname]) + ' ' + UPPER(b.[OtherNames]) + ' | ' + UPPER(b.[StaffCode]) + ' | (' + UPPER(c.[DepartmentName]) + ' Department)' AS StaffDetails, a.[EntryDate], [EffectiveMonth], [EffectiveYear], [Amount], [Purpose], a.[Remark] FROM [dbo].[HR_PAYROLL_Staff_Special_Allowance] a INNER JOIN dbo.[HR_Staff_Base] b ON a.Remark = b.StaffCode INNER JOIN dbo.[Core_Department] c ON b.Department = left(c.DepartmentName, charindex('.', c.DepartmentName) - 1) " 
                        DeleteCommand="STP_HR_DELETE_HR_PAYROLL_Staff_Special_Allowance" 
                        DeleteCommandType="StoredProcedure" 
                        InsertCommand="STP_HR_INSERT_HR_PAYROLL_Staff_Special_Allowance" 
                        InsertCommandType="StoredProcedure" 
                        UpdateCommand="STP_HR_UPDATE_HR_PAYROLL_Staff_Special_Allowance" 
                        UpdateCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="SpecialAllowanceId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="SpecialAllowanceId" Type="Int32" />
                            <asp:Parameter Name="StaffId" Type="Int32" />
                            <asp:Parameter Name="EntryDate" Type="DateTime" />
                            <asp:Parameter Name="EffectiveMonth" Type="Int32" />
                            <asp:Parameter Name="EffectiveYear" Type="Int32" />
                            <asp:Parameter Name="Amount" Type="Decimal" />
                            <asp:Parameter Name="Purpose" Type="String" />
                            <asp:Parameter Name="Remark" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Direction="InputOutput" Name="SpecialAllowanceId" 
                                Type="Int32" />
                            <asp:Parameter Name="StaffId" Type="Int32" />
                            <asp:Parameter Name="EntryDate" Type="DateTime" />
                            <asp:Parameter Name="EffectiveMonth" Type="Int32" />
                            <asp:Parameter Name="EffectiveYear" Type="Int32" />
                            <asp:Parameter Name="Amount" Type="Decimal" />
                            <asp:Parameter Name="Purpose" Type="String" />
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
                        Text=":: Add a New Special Allowance"></asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;
                    </td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                        DataSourceID="dsSqlGetData" DefaultMode="Insert" Width="900px" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        AutoGenerateInsertButton="True" DataKeyNames="SpecialAllowanceId">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" 
                            BackColor="#FFFBD6" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" Width="220px" 
                            VerticalAlign="Top" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="SpecialAllowanceId" HeaderText="SpecialAllowanceId" 
                                InsertVisible="False" ReadOnly="True" 
                                SortExpression="SpecialAllowanceId" />
                            <asp:TemplateField HeaderText="Staff Concerned:" SortExpression="StaffId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Remark") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList5" runat="server" 
                                        CssClass="defaultFormElementStyle" DataSourceID="dsSqlGetSingleStaff" 
                                        DataTextField="StaffDetails" DataValueField="StaffCode" 
                                        SelectedValue='<%# Bind("Remark") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="dsSqlGetSingleStaff" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:iTecon %>" 
                                        SelectCommand="SELECT [StaffCode], UPPER([Surname]) + ' ' + UPPER([OtherNames]) + ' | ' + UPPER([StaffCode]) + ' | (' + UPPER([DepartmentName]) + ' Department)' AS StaffDetails FROM [HR_Staff_Base] a INNER JOIN [Core_Department] b ON a.Department = left(b.DepartmentName, charindex('.', b.DepartmentName) - 1) ORDER BY StaffDetails">
                                    </asp:SqlDataSource>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Entry Date:" SortExpression="EntryDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList6" runat="server" 
                                        CssClass="defaultFormElementStyle" DataSourceID="dsSqlGetDate" 
                                        DataTextField="CurrentDate" DataValueField="CurrentDate" 
                                        SelectedValue='<%# Bind("EntryDate") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="dsSqlGetDate" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:iTecon %>" 
                                        SelectCommand="SELECT GetDate() AS CurrentDate"></asp:SqlDataSource>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EntryDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Effective Month:" 
                                SortExpression="EffectiveMonth">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EffectiveMonth") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="ddlMonth" runat="server" 
                                        CssClass="defaultFormElementStyle" 
                                        SelectedValue='<%# Bind("EffectiveMonth") %>'>
                                        <asp:ListItem Value="1">January</asp:ListItem>
                                        <asp:ListItem Value="2">February</asp:ListItem>
                                        <asp:ListItem Value="3">March</asp:ListItem>
                                        <asp:ListItem Value="4">April</asp:ListItem>
                                        <asp:ListItem Value="5">May</asp:ListItem>
                                        <asp:ListItem Value="6">June</asp:ListItem>
                                        <asp:ListItem Value="7">July</asp:ListItem>
                                        <asp:ListItem Value="8">August</asp:ListItem>
                                        <asp:ListItem Value="9">September</asp:ListItem>
                                        <asp:ListItem Value="10">October</asp:ListItem>
                                        <asp:ListItem Value="11">November</asp:ListItem>
                                        <asp:ListItem Value="12">December</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="ddlYear" runat="server" 
                                        CssClass="defaultFormElementStyle" SelectedValue='<%# Bind("EffectiveYear") %>'>
                                        <asp:ListItem Value="2011">2011</asp:ListItem>
                                        <asp:ListItem Value="2010">2010</asp:ListItem>
                                        <asp:ListItem Value="2009">2009</asp:ListItem>
                                        <asp:ListItem Value="2008">2008</asp:ListItem>
                                        <asp:ListItem Value="2007">2007</asp:ListItem>
                                        <asp:ListItem Value="2006">2006</asp:ListItem>
                                        <asp:ListItem Value="2005">2005</asp:ListItem>
                                        <asp:ListItem Value="2004">2004</asp:ListItem>
                                        <asp:ListItem Value="2003">2003</asp:ListItem>
                                        <asp:ListItem Value="2002">2002</asp:ListItem>
                                        <asp:ListItem Value="2001">2001</asp:ListItem>
                                        <asp:ListItem Value="2000">2000</asp:ListItem>
                                        <asp:ListItem value="1999">1999</asp:ListItem>
                                        <asp:ListItem value="1998">1998</asp:ListItem>
                                        <asp:ListItem value="1997">1997</asp:ListItem>
                                        <asp:ListItem value="1996">1996</asp:ListItem>
                                        <asp:ListItem value="1995">1995</asp:ListItem>
                                        <asp:ListItem value="1994">1994</asp:ListItem>
                                        <asp:ListItem value="1993">1993</asp:ListItem>
                                        <asp:ListItem value="1992">1992</asp:ListItem>
                                        <asp:ListItem value="1991">1991</asp:ListItem>
                                        <asp:ListItem value="1990">1990</asp:ListItem>
                                        <asp:ListItem value="1989">1989</asp:ListItem>
                                        <asp:ListItem value="1988">1988</asp:ListItem>
                                        <asp:ListItem value="1987">1987</asp:ListItem>
                                        <asp:ListItem value="1986">1986</asp:ListItem>
                                        <asp:ListItem value="1985">1985</asp:ListItem>
                                        <asp:ListItem value="1984">1984</asp:ListItem>
                                        <asp:ListItem value="1983">1983</asp:ListItem>
                                        <asp:ListItem value="1982">1982</asp:ListItem>
                                        <asp:ListItem value="1981">1981</asp:ListItem>
                                        <asp:ListItem value="1980">1980</asp:ListItem>
                                        <asp:ListItem value="1979">1979</asp:ListItem>
                                        <asp:ListItem value="1978">1978</asp:ListItem>
                                        <asp:ListItem value="1977">1977</asp:ListItem>
                                        <asp:ListItem value="1976">1976</asp:ListItem>
                                        <asp:ListItem value="1975">1975</asp:ListItem>
                                        <asp:ListItem value="1974">1974</asp:ListItem>
                                        <asp:ListItem value="1973">1973</asp:ListItem>
                                        <asp:ListItem value="1972">1972</asp:ListItem>
                                        <asp:ListItem value="1971">1971</asp:ListItem>
                                        <asp:ListItem value="1970">1970</asp:ListItem>
                                        <asp:ListItem value="1969">1969</asp:ListItem>
                                        <asp:ListItem value="1968">1968</asp:ListItem>
                                        <asp:ListItem value="1967">1967</asp:ListItem>
                                        <asp:ListItem value="1966">1966</asp:ListItem>
                                        <asp:ListItem value="1965">1965</asp:ListItem>
                                        <asp:ListItem value="1964">1964</asp:ListItem>
                                        <asp:ListItem value="1963">1963</asp:ListItem>
                                        <asp:ListItem value="1962">1962</asp:ListItem>
                                        <asp:ListItem value="1961">1961</asp:ListItem>
                                        <asp:ListItem value="1960">1960</asp:ListItem>
                                        <asp:ListItem value="1959">1959</asp:ListItem>
                                        <asp:ListItem value="1958">1958</asp:ListItem>
                                        <asp:ListItem value="1957">1957</asp:ListItem>
                                        <asp:ListItem value="1956">1956</asp:ListItem>
                                        <asp:ListItem value="1955">1955</asp:ListItem>
                                        <asp:ListItem value="1954">1954</asp:ListItem>
                                        <asp:ListItem value="1953">1953</asp:ListItem>
                                        <asp:ListItem value="1952">1952</asp:ListItem>
                                        <asp:ListItem value="1951">1951</asp:ListItem>
                                        <asp:ListItem value="1950">1950</asp:ListItem>
                                        <asp:ListItem value="1949">1949</asp:ListItem>
                                        <asp:ListItem value="1948">1948</asp:ListItem>
                                        <asp:ListItem value="1947">1947</asp:ListItem>
                                        <asp:ListItem value="1946">1946</asp:ListItem>
                                        <asp:ListItem value="1945">1945</asp:ListItem>
                                        <asp:ListItem value="1944">1944</asp:ListItem>
                                        <asp:ListItem value="1943">1943</asp:ListItem>
                                        <asp:ListItem value="1942">1942</asp:ListItem>
                                        <asp:ListItem value="1941">1941</asp:ListItem>
                                        <asp:ListItem value="1940">1940</asp:ListItem>
                                        <asp:ListItem value="1939">1939</asp:ListItem>
                                        <asp:ListItem value="1938">1938</asp:ListItem>
                                        <asp:ListItem value="1937">1937</asp:ListItem>
                                        <asp:ListItem value="1936">1936</asp:ListItem>
                                        <asp:ListItem value="1935">1935</asp:ListItem>
                                        <asp:ListItem value="1934">1934</asp:ListItem>
                                        <asp:ListItem value="1933">1933</asp:ListItem>
                                        <asp:ListItem value="1932">1932</asp:ListItem>
                                        <asp:ListItem value="1931">1931</asp:ListItem>
                                        <asp:ListItem value="1930">1930</asp:ListItem>
                                        <asp:ListItem value="1929">1929</asp:ListItem>
                                        <asp:ListItem value="1928">1928</asp:ListItem>
                                        <asp:ListItem value="1927">1927</asp:ListItem>
                                        <asp:ListItem value="1926">1926</asp:ListItem>
                                        <asp:ListItem value="1925">1925</asp:ListItem>
                                        <asp:ListItem value="1924">1924</asp:ListItem>
                                        <asp:ListItem value="1923">1923</asp:ListItem>
                                        <asp:ListItem value="1922">1922</asp:ListItem>
                                        <asp:ListItem value="1921">1921</asp:ListItem>
                                        <asp:ListItem value="1920">1920</asp:ListItem>
                                        <asp:ListItem value="1919">1919</asp:ListItem>
                                        <asp:ListItem value="1918">1918</asp:ListItem>
                                        <asp:ListItem value="1917">1917</asp:ListItem>
                                        <asp:ListItem value="1916">1916</asp:ListItem>
                                        <asp:ListItem value="1915">1915</asp:ListItem>
                                        <asp:ListItem value="1914">1914</asp:ListItem>
                                        <asp:ListItem value="1913">1913</asp:ListItem>
                                        <asp:ListItem value="1912">1912</asp:ListItem>
                                        <asp:ListItem value="1911">1911</asp:ListItem>
                                    </asp:DropDownList>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("EffectiveMonth") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount:" SortExpression="Amount">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Amount") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    N
                                    <asp:TextBox ID="TextBox5" runat="server" Columns="10" 
                                        CssClass="defaultFormElementStyleRightAligned" Text='<%# Bind("Amount") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Purpose:" SortExpression="Purpose">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Purpose") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Columns="40" 
                                        Text='<%# Bind("Purpose") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Purpose") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    &nbsp; &nbsp;&nbsp;</td>
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
