<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <div class="form-group" style="width:25%;">
      <label for="sel1">Select state to show data</label>
      <select class="form-control" id="stateList">
      	<option value="">------------Select State------------</option>
		<option value="Andaman_and_Nicobar_Islands">Andaman and Nicobar Islands</option>
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
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Charts</li>
      </ol>
      
      
      <!-- line Chart Example-->
       <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-line-chart"></i> Line Chart Example</div>
        <div class="card-body">
           <div id="chart_div" style="width:100%;height:400px;"></div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM
        <button type="button" class="btn btn-success" style="float:right" id="predictData" onclick="predictedLine()">Predict</button></div>
      </div>
      
      
     
      <!-- predicted line Chart Example-->
       <div class="card mb-3" id="predictedResult" style="display:none">
        <div class="card-header">
          <i class="fa fa-line-chart"></i> Line Chart Example</div>
        <div class="card-body">
           <div id="predicted_chart_div" style="width:100%;height:400px;"></div>
        </div>
      </div>
        
          <!-- Example Bar Chart Card-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-bar-chart"></i> Bar Chart Example</div>
            <div class="card-body">
                         <div id="myBarChart" style="width:100%;height:400px;"></div>
            
            
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
      
        
          <!-- Example Pie Chart Card-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fa fa-pie-chart"></i> Pie Chart Example</div>
            <div class="card-body">
            
             <div id="myPieChart" style="width:100%;height:400px;"></div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
       
    
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->

<!-- start Line Chart code -->
    
<script type="text/javascript">   
google.load('visualization', '1.0', {'packages':['corechart']});
google.setOnLoadCallback(BasicLine);
function BasicLine() {
	var e = document.getElementById("stateList");
	selectedState = e.options[e.selectedIndex].value;
	$.get("${baseURL}/assets/csvfiles/linechart/"+selectedState+".csv", function(csvString) {
		var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
			data      = new google.visualization.arrayToDataTable(arrayData),
			options   = {
						  hAxis: {
							title: 'Month(2011-2016)',
							direction:-1,
							slantedText:true, 
							slantedTextAngle:90,
							textStyle: {
								 color: '#01579b',
								 fontSize: 8,
								 fontName: 'Arial',
								 bold: true
							  },
							  titleTextStyle: {
								 color: '#01579b',
								 fontSize: 15,
								 fontName: 'Arial',
								 bold: true,
							  }
						  },
						  vAxis: {
							title: 'Actual Generation',
							textStyle: {
								 color: '#1a237e',
								 fontSize: 12,
								 bold: true
							  },
							  titleTextStyle: {
								 color: '#1a237e',
								 fontSize: 15,
								 fontName: 'Arial',
								 bold: true
							  }
						  },
						  backgroundColor: '#f1f8e9',
						  pointsVisible: true,
						  pointSize: 3,
						  colors: ['#a52714']
						},
			chart     = new google.visualization.LineChart(document.getElementById('chart_div'));
		chart.draw(data, options);
	},
	'text');
}
	</script>
<!-- end Line Chart code -->


<!-- start Line Chart code -->
    
<script type="text/javascript">   
google.load('visualization', '1.0', {'packages':['corechart']});
google.setOnLoadCallback(predictedLine);
function predictedLine() {
	$.get("${baseURL}/assets/csvfiles/linechart/"+selectedState+"1.csv", function(csvString) {
		var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar}),
			data      = new google.visualization.arrayToDataTable(arrayData),
			options   = {
						  hAxis: {
							title: 'Month(2011-2016)',
							direction:-1,
							slantedText:true, 
							slantedTextAngle:90,
							textStyle: {
								 color: '#01579b',
								 fontSize: 8,
								 fontName: 'Arial',
								 bold: true
							  },
							  titleTextStyle: {
								 color: '#01579b',
								 fontSize: 15,
								 fontName: 'Arial',
								 bold: true,
							  }
						  },
						  vAxis: {
							title: 'Actual Generation',
							textStyle: {
								 color: '#1a237e',
								 fontSize: 12,
								 bold: true
							  },
							  titleTextStyle: {
								 color: '#1a237e',
								 fontSize: 15,
								 fontName: 'Arial',
								 bold: true
							  }
						  },
						  backgroundColor: '#f1f8e9',
						  pointsVisible: true,
						  pointSize: 3,
						  colors: ['#a52714']
						},
			chart     = new google.visualization.LineChart(document.getElementById('predicted_chart_div'));
		chart.draw(data, options);
	},
	'text');
}
	</script>
<!-- end Line Chart code -->


<script>
$(document).ready(function(){
    $("#predictData").click(function(){
        $("#predictedResult").toggle();
    });
});
</script>