<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		data.addColumn('number', '단위(만원)');
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
			'title' : '매출현황',
			'width' : 400,
			'height' : 300,
			is3D : true,
			vAxis : {
				format : '#,###%'
			},
			colors : [ 'black', 'green', 'blue', 'yellow', 'black' ]
		};
		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.ColumnChart(document
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
<div>
<h1>매출 페이지</h1>
<input type="date"> ~ <input type="date"> <button>선택</button><br>
월별 매출 내역 
<select>
<%-- <c:forEach var="" items=""></c:forEach> --%>
<option selected>월 선택</option><br>
</select><br>
연별 매출 내역
<select>
<%-- <c:forEach></c:forEach> --%>
<option selected>년 선택</option>
</select>

 <div id="chart_div" style="width: 800px; height: 500px;"></div>



</div>