<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="req" value="${pageContext.request}" />
<c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>Home</title>

<!-- Bootstrap core CSS-->
<link href="${baseURL}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="${baseURL}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="${baseURL}/assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${baseURL}/assets/css/sb-admin.css" rel="stylesheet">


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- Bootstrap core JavaScript-->
<script src="${baseURL}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${baseURL}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="${baseURL}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Page level plugin JavaScript-->
<script src="${baseURL}/assets/vendor/chart.js/Chart.min.js"></script>
<script src="${baseURL}/assets/vendor/datatables/jquery.dataTables.js"></script>
<script src="${baseURL}/assets/vendor/datatables/dataTables.bootstrap4.js"></script>
<!-- Custom scripts for all pages-->
<script src="${baseURL}/assets/js/sb-admin.js"></script>
<!-- Custom scripts for this page-->
<script src="${baseURL}/assets/js/sb-admin-datatables.js"></script>
<script src="${baseURL}/assets/js/sb-admin-charts.js"></script>

<script type="text/javascript">
      google.charts.load('current', {
        'packages':['geochart'],
        // Note: you will need to get a mapsApiKey for your project.
        // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
        'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
      });
      google.charts.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
          ['State', 'Population'],
    ['Uttar Pradesh', 199581477],
    ['Maharashtra', 112372972],
    ['Bihar', 103804637],
    ['West Bengal', 91347736],
    ['Madhya Pradesh', 72597565],
    ['Tamil Nadu', 72138958],
    ['Rajasthan', 68621012],
    ['Karnataka', 61130704],
    ['Gujarat', 60383628],
    ['Andhra Pradesh', 49386799],
    ['Odisha', 41947358],
    ['Telangana', 35286757],
    ['Kerala', 33387677],
    ['Jharkhand', 32966238],
    ['Assam', 31169272],
    ['Punjab', 27704236],
    ['Chhattisgarh', 25540196],
    ['Haryana', 25353081],
    ['Jammu and Kashmir', 12548926],
    ['Uttarakhand', 10116752],
    ['Himachal Pradesh', 6856509],
    ['Tripura', 3671032],
    ['Meghalaya', 2964007],
    ['Manipur', 2721756],
    ['Nagaland', 1980602],
    ['Goa', 1457723],
    ['Arunachal Pradesh', 1382611],
    ['Mizoram', 1091014],
    ['Sikkim', 607688],
    ['Delhi', 16753235],
    ['Puducherry', 1244464],
    ['Chandigarh', 1054686],
    ['Andaman and Nicobar Islands', 379944],
    ['Dadra and Nagar Haveli', 342853],
    ['Daman and Diu', 242911],
    ['Lakshadweep', 64429]
        ]);

        var options = {region: 'IN',
    displayMode: 'regions',
	colorAxis: {colors: ['white', 'blue']},
    resolution: 'provinces',
    width: 1080, 
    height: 600
		};

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }
    </script>

</head>








