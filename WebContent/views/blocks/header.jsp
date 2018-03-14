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
          ['State', 'PowerGeneration'],
    ['Uttar Pradesh', 2477],
    ['Maharashtra',2972],
    ['Bihar', 4637],
    ['West Bengal', 7736],
    ['Madhya Pradesh', 7565],
    ['Tamil Nadu', 8958],
    ['Rajasthan',1012],
    ['Karnataka',3070],
    ['Gujarat', 3628],
    ['Andhra Pradesh', 6799],
    ['Odisha', 7358],
    ['Telangana', 6757],
    ['Kerala', 7677],
    ['Jharkhand', 6238],
    ['Assam', 9272],
    ['Punjab', 4236],
    ['Chhattisgarh', 2196],
    ['Haryana', 3081],
    ['Jammu and Kashmir', 926],
    ['Uttarakhand', 6752],
    ['Himachal Pradesh', 6509],
    ['Tripura', 332],
    ['Meghalaya', 4007],
    ['Manipur', 1756],
    ['Nagaland', 1602],
    ['Goa', 7723],
    ['Arunachal Pradesh', 2611],
    ['Mizoram', 1014],
    ['Sikkim', 7688],
    ['Delhi', 3235],
    ['Puducherry', 4464],
    ['Chandigarh', 4686],
    ['Andaman and Nicobar Islands', 9944],
    ['Dadra and Nagar Haveli', 2853],
    ['Daman and Diu', 2911],
    ['Lakshadweep', 929]
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








