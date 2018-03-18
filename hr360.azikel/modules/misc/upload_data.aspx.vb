
Partial Class modules_misc_upload_data
    Inherits System.Web.UI.Page

    Dim blnSuccess As Boolean

    'Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
    '    Try

    '        ' Specify the path on the server to save the uploaded file to.
    '        Dim savePath As String = Server.MapPath("~/App_Data/")         '"c:\temp\uploads\"
    '        Dim constDestFileName As String = "d_sp.xls"
    '        Dim fileDetails As System.IO.FileInfo = Nothing

    '        ' Before attempting to perform operations on the file, verify that the FileUpload control contains a file.
    '        If (FileUpload1.HasFile) Then
    '            fileDetails = New System.IO.FileInfo(FileUpload1.PostedFile.FileName)
    '            ' Get the name of the file to upload.
    '            Dim backupFileName As String = Now.Year.ToString & "_" & Now.Month.ToString & "_" & Now.Day.ToString & "_" & Now.Hour.ToString & "_" & Now.Minute.ToString & "_" & Now.Second.ToString & "_" & Now.Millisecond.ToString & "_" & FileUpload1.FileName
    '            ' Append the name of the file to upload to the path.
    '            backupFileName = savePath & backupFileName
    '            savePath &= constDestFileName
    '            ' Call the SaveAs method to save the uploaded file to the specified path. This example does not perform all the necessary error checking.               
    '            ' If a file with the same name already exists in the specified path, the uploaded file overwrites it.
    '            FileUpload1.SaveAs(backupFileName)
    '            FileUpload1.SaveAs(savePath)
    '            ' Notify the user of the name the file was saved under.
    '            blnSuccess = True
    '            lblUploadStatus.Font.Bold = True
    '            lblUploadStatus.ForeColor = Drawing.Color.Green
    '            lblUploadStatus.Text = "Congratulations! Your data file was SUCCESSFULLY uploaded to the server."
    '        Else
    '            ' Notify the user that no file was uploaded.
    '            blnSuccess = False
    '            lblUploadStatus.Font.Bold = True
    '            lblUploadStatus.ForeColor = Drawing.Color.Red
    '            lblUploadStatus.Text = "You did not specify a file to upload."
    '        End If

    '        If blnSuccess Then
    '            pnlTransferLink.Visible = True
    '            'first of all, extract the records from Excel into memory
    '            Dim strSql As String = "SELECT * FROM [Spots$]"
    '            Dim strCsvConnString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source='" & savePath & "';Extended Properties='Excel 8.0';"

    '            Dim da As Data.OleDb.OleDbDataAdapter = New Data.OleDb.OleDbDataAdapter(strSql, strCsvConnString)
    '            Dim dt As Data.DataTable = New Data.DataTable
    '            da.Fill(dt)
    '            da = Nothing

    '            Dim i As Int32 = 0, rowCount As Int64 = dt.Rows.Count
    '            lblProgressText.Text = "PROGRESS UPDATE (" & rowCount & " rows received from your Data File" & ")<br />"
    '            lblProgressText.Text &= "====================================" & "<br /><br />"
    '            'now transfer the records from memory into SQL Server
    '            For i = 0 To dt.Rows.Count - 1
    '                'Response.Write("'" & dt.Rows(i).Item(0).ToString & "'<br />")
    '                Common.UploadManifest(dt.Rows(i).Item(0).ToString, dt.Rows(i).Item(1).ToString, dt.Rows(i).Item(2).ToString, dt.Rows(i).Item(3).ToString, dt.Rows(i).Item(4).ToString, dt.Rows(i).Item(5).ToString, dt.Rows(i).Item(6).ToString, dt.Rows(i).Item(7).ToString, dt.Rows(i).Item(8).ToString, dt.Rows(i).Item(9).ToString, dt.Rows(i).Item(10).ToString, dt.Rows(i).Item(11).ToString, dt.Rows(i).Item(12).ToString, dt.Rows(i).Item(13).ToString, dt.Rows(i).Item(14).ToString, dt.Rows(i).Item(15).ToString, dt.Rows(i).Item(16).ToString, dt.Rows(i).Item(17).ToString, dt.Rows(i).Item(18).ToString)
    '                lblProgressText.Text &= "Row #" & i + 1 & " was uploaded successfully." & "<br />"
    '            Next
    '            lblProgressText.Text &= "<br />====================================" & "<br />"
    '            lblProgressText.Text &= rowCount & " rows uploaded and transferred SUCCESSFULLY!" & "<br />"
    '        Else
    '            pnlTransferLink.Visible = False
    '        End If
    '    Catch ex As System.Data.OleDb.OleDbException
    '        ' Notify the user that no file was uploaded.
    '        blnSuccess = False
    '        lblUploadStatus.Font.Bold = True
    '        lblUploadStatus.ForeColor = Drawing.Color.Red
    '        lblUploadStatus.Text = "An error occurred while uploading your data file. <br />Please confirm that the data file conforms to the expected format. <br />For further information, consult the System Administrator."
    '    Catch ex As Exception
    '        'Throw ex
    '    End Try
    'End Sub

End Class
