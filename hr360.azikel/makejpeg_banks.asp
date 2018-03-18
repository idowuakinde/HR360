<%
	strPath = Server.MapPath(".\dundas")  'retrieve the physical directory where ASP pages are located
	
	Set objPieChart = Server.CreateObject("Dundas.PieChartServer.1")  'create an instance of the control
	
	objPieChart.DirOutput = strPath & "\Chart\"					'set the working directory of the control 
	objPieChart.DirTemplate = strPath & "\Templates\"			'set the Template directory of the control 
	objPieChart.DirTexture = strPath & "\Textures\"				'set the Textures directory of the control
	
	objPieChart.LoadTemplate "SmartRevenuesLG_1.cuc"     'load a template (made in the Template Editor)
	
	'response.write objPieChart.DirOutput
	
	 'add 3 slices to the pie chart and specify values (sizes), slice labels and legend labels
	objPieChart.AddData 10004300.00, "","ACCESS"
	objPieChart.AddData 31669975.12, "","AFRIBANK"
	objPieChart.AddData 68786929.31, "","FBN"
	objPieChart.AddData 16108345.68, "","GTBANK"
	objPieChart.AddData 10032680.00, "","OCEANIC"
	objPieChart.AddData 2281365.62, "","UBN"
	objPieChart.AddData 67458123.26, "","UBA"
	objPieChart.AddData 22324249.50, "","WEMA"
	objPieChart.AddData 17896759.00, "","ZENITH"
	
	'output graphics as a jpeg file, specifying the width and height of the image
	objPieChart.SendJPEG 350,250
%>