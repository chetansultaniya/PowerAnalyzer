<html>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
	$.get("${baseURL}/assets/csvfiles/linechart/data.csv", function(csvString) {
		var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
		data = new google.visualization.arrayToDataTable(arrayData),
        options = {
          title: 'My Daily Activities',
          is3D: true,
    	};
        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
  	    },
	    'text');
}
</script>
<script type="text/javascript">
google.charts.setOnLoadCallback(drawBarChart);
function drawBarChart() {
	$.get("${baseURL}/assets/csvfiles/linechart/data.csv", function(csvString) {
		var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
		data = new google.visualization.arrayToDataTable(arrayData),
    	options = {title: 'Population (in millions)'}; 
    	var chart = new google.visualization.ColumnChart(document.getElementById('barchart_div'));
    	chart.draw(data, options);
 		},
    	'text');
}
</script>
</head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
     <div id="barchart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>