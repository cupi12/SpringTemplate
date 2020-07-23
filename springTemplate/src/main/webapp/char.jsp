<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string', '부서');
		data.addColumn('number', '사원수');
		var chartdata = [];
		$.ajax({
			url : "getChartData",
				async : false, //동기식으로 처리한다. 
			success : function(result){
				for(i=0; i<result.length; i++){
					chartdata.push([result[i].name, parseInt(result[i].cnt)]);
				}
			}
		});
		data.addRows(chartdata);

		// Set chart options
		var options = {
			'title' : '부서별 사원수',
			'width' : 400,
			'height' : 300,
			is3D : true,
			hAxis : {
				format : '#,###%'
			},
			colors : [ 'red', 'green', 'blue', 'yellow', 'black' ]
		};
		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.BarChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);

		google.visualization.events.addListener(chart, 'select', selectHandler);

		function selectHandler(e) {
			alert('A table row was selected');
			var row = chart.getSelection()[0].row
			var column = chart.getSelection()[0].column
			console.log(data[0].row);

		}
	}
</script>
</head>
<body>
	<div id="chart_div" style="width: 800px; height: 500px;"></div>
</body>
</html>
