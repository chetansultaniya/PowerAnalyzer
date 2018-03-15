<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
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
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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
			$.get("${baseURL}/assets/csvfiles/mp2.csv", function(csvString) {
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
