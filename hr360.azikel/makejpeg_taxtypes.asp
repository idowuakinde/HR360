<%
	strPath = Server.MapPath(".\dundas")  'retrieve the physical directory where ASP pages are located
	
	Set objPieChart = Server.CreateObject("Dundas.PieChartServer.1")  'create an instance of the control
	
	objPieChart.DirOutput = strPath & "\Chart\"					'set the working directory of the control 
	objPieChart.DirTemplate = strPath & "\Templates\"			'set the Template directory of the control 
	objPieChart.DirTexture = strPath & "\Textures\"				'set the Textures directory of the control
	
	objPieChart.LoadTemplate "SmartRevenuesLG_1.cuc"     'load a template (made in the Template Editor)
	
	'response.write objPieChart.DirOutput
	
	 'add 3 slices to the pie chart and specify values (sizes), slice labels and legend labels
	objPieChart.AddData 29751098.04, "","LOCK-UP"
	objPieChart.AddData 294426797.16, "","MOBILE ADVERT"
	objPieChart.AddData 31758243.25, "","OKADA PERMIT"
	objPieChart.AddData 27088589.81, "","TAXI PERMIT"
	objPieChart.AddData 46781826.99, "","TENEMENT RATE"
	objPieChart.AddData 27752352.95, "","TRADE PERMIT"
	
	'output graphics as a jpeg file, specifying the width and height of the image
	objPieChart.SendJPEG 350,250
%>