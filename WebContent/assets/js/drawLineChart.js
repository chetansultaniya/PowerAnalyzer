google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'X');
      data.addColumn('number', 'Dogs');

      data.addRows([
        [0, 0],   [1, 10],  [2, 23],  [3, 17],  [4, 18],  [5, 9],
        [6, 11],  [7, 27],  [8, 33],  [9, 40],  [10, 32], [11, 35],
        [12, 30], [13, 40], [14, 42], [15, 47], [16, 44], [17, 48],
        [18, 52], [19, 54], [20, 42], [21, 55], [22, 56], [23, 57],
        [24, 60], [25, 50], [26, 52], [27, 51], [28, 49], [29, 53],
        [30, 55], [31, 60], [32, 61], [33, 59], [34, 62], [35, 65],
        [36, 62], [37, 58], [38, 55], [39, 61], [40, 64], [41, 65],
        [42, 63], [43, 66], [44, 67], [45, 69], [46, 69], [47, 70],
        [48, 72], [49, 68], [50, 66], [51, 65], [52, 67], [53, 70],
        [54, 71], [55, 72], [56, 73], [57, 75], [58, 70], [59, 68],
        [60, 64], [61, 60], [62, 65], [63, 67], [64, 68], [65, 69],
        [66, 70], [67, 72], [68, 75], [69, 80]
      ]);

      var options = {
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
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }


google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

  var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['Work',     11],
    ['Eat',      2],
    ['Commute',  2],
    ['Watch TV', 2],
    ['Sleep',    7]
  ]);

  var options = {
    title: 'My Daily Activities'
  };

  var chart = new google.visualization.PieChart(document.getElementById('myPieChart'));

  chart.draw(data, options);
}

  google.charts.load('current', {'packages':['bar']});
  google.charts.setOnLoadCallback(drawStuff);

  function drawStuff() {
    var data = new google.visualization.arrayToDataTable([
      ['Opening Move', 'Percentage'],
      ["King's pawn (e4)", 44],
      ["Queen's pawn (d4)", 31],
      ["Knight to King 3 (Nf3)", 12],
      ["Queen's bishop pawn (c4)", 10],
      ['Other', 3]
    ]);

    var options = {
      title: 'Chess opening moves',
      width: 900,
      legend: { position: 'none' },
      chart: { title: 'Chess opening moves',
               subtitle: 'popularity by percentage' },
      bars: 'horizontal', // Required for Material Bar Charts.
      axes: {
        x: {
          0: { side: 'top', label: 'Percentage'} // Top x-axis.
        }
      },
      bar: { groupWidth: "90%" }
    };

    var chart = new google.charts.Bar(document.getElementById("myBarChart"));
    chart.draw(data, options);
  };
