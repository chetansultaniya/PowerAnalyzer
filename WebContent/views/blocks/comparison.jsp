<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Comparison Page</li>
      </ol>
      <div class="form-group" style="width:25%;">
      <label for="sel1">Select state to show data</label>
      <select class="form-control" id="stateList" onchange="demo()">
      	<option value="">------------Select State------------</option>
		<option value="Andhra_Pradesh">Andhra Pradesh</option>
		<option value="Arunachal_Pradesh">Arunachal Pradesh</option>
		<option value="Assam">Assam</option>
		<option value="Bihar">Bihar</option>
		<option value="Chandigarh">Chhattisgarh</option>
		<option value="Goa">Goa</option>
		<option value="Gujarat">Gujarat</option>
		<option value="Haryana">Haryana</option>
		<option value="Himachal_Pradesh">Himachal Pradesh</option>
		<option value="Jammu_and_Kashmir">Jammu and Kashmir</option>
		<option value="Jharkhand">Jharkhand</option>
		<option value="Karnataka">Karnataka</option>
		<option value="Kerala">Kerala</option>
		<option value="mp">Madhya Pradesh</option>
		<option value="Maharashtra">Maharashtra</option>
		<option value="Manipur">Manipur</option>
		<option value="Meghalaya">Meghalaya</option>
		<option value="Nagaland">Nagaland</option>
		<option value="Orissa">Orissa</option>
		<option value="Punjab">Punjab</option>
		<option value="Rajasthan">Rajasthan</option>
		<option value="Tamil_Nadu">Tamil Nadu</option>
		<option value="Tripura">Tripura</option>
		<option value="Uttaranchal">Uttaranchal</option>
		<option value="Uttar_Pradesh">Uttar Pradesh</option>
		<option value="West_Bengal">West Bengal</option>
      </select><br>
      <button style="" class="btn btn-primary" id="load_data" onclick="BasicLine()">Load Data</button>
    </div>
      <div class="row">
        <div class="col-12">
          <!-- Example Bar Chart Card-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-bar-chart" id="barchart_title"></i> Bar Chart</div>
            <div class="card-body">
               <div id="myBarChart" style="width:100%;height:400px;"></div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
      
          <!-- Example Pie Chart Card-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-pie-chart" id="piechart_title"></i> Pie Chart</div>
            <div class="card-body">
             <div id="myPieChart" style="width:100%;height:400px;"></div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    
    
    
<script type="text/javascript">

  var selectedState;
  var baseURL="${baseURL}";
  function demo()
  {
	var e = document.getElementById("stateList");
	selectedState = e.options[e.selectedIndex].value;
	return selectedState;
  }
  
  $(document).ready(function(){
	    $("#load_data").click(function(){
	    	$("#barchart_title").html("&nbsp;"+selectedState);
	    	$("#piechart_title").html("&nbsp;"+selectedState);
	    	//pie chart
	    	  google.charts.load("current", {packages:["corechart"]});
	    	  google.charts.setOnLoadCallback(drawChart);
	    	  function drawChart() {
	    		$.get("${baseURL}/assets/csvfiles/pie/"+selectedState+".csv", function(csvString) {
	    			var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
	    			data = new google.visualization.arrayToDataTable(arrayData),
	    	        options = {
	    	          title: 'Year Wise State Data',
	    	          is3D: true,
	    	    	};
	    	        var chart = new google.visualization.PieChart(document.getElementById('myPieChart'));
	    	        chart.draw(data, options);
	    	  	    },
	    		    'text');
	    	   }
	    	//bar chart
	    	  google.charts.setOnLoadCallback(drawBarChart);
	    	  function drawBarChart() {
	    	  	$.get("${baseURL}/assets/csvfiles/bar/"+selectedState+".csv", function(csvString) {
	    	  		var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
	    	  		data = new google.visualization.arrayToDataTable(arrayData),
	    	      	options = {title: 'Power Generation'}; 
	    	      	var chart = new google.visualization.ColumnChart(document.getElementById('myBarChart'));
	    	      	chart.draw(data, options);
	    	   		},
	    	      	'text');
	    	   }

	    });
  });
  
  
  
  
  
  
  
  
  
  
  
  

</script>
