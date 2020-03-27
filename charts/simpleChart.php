<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$connect = mysqli_connect("localhost", "root", "", "mkt_covid_tracker");
$query = "CALL ConfirmedCasesByAgeGroup()";
$result = mysqli_query($connect, $query);
mysqli_close($connect);

$connect = mysqli_connect("localhost", "root", "", "mkt_covid_tracker");
$query = "CALL ConfirmedCasesByMktBarangay()";
$result2 = mysqli_query($connect, $query);
mysqli_close($connect);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Simple Pie Chart by Google Chart API with PHP Mysql</title>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages' : ['corechart', 'bar']});
		google.charts.setOnLoadCallback(drawChart);
		google.charts.setOnLoadCallback(drawChart2);
		function drawChart() {
			var data = google.visualization.arrayToDataTable([['Age Group', 'Confirmed Cases'],
				<?php
					while ($row = mysqli_fetch_array($result)) {
					    echo "['" . $row["age_group"] . "', " . $row["ConfirmedCases"] ."],";
					}
				 ?>
				]);
			var options = {
					title: 'Confirmed Cases by age group',
					pieSliceText: 'value-and-percentage'
			};
			var chart = new google.visualization.PieChart(document.getElementById('piechart'));
			chart.draw(data, options);
		}

		function drawChart2() {
			var data = google.visualization.arrayToDataTable([['Barangay', 'Patients Under Monitoring', { role: 'annotation' }, 'Persons Under Investigation', { role: 'annotation' }],
				<?php
					$pui = "";
					$pum = "";
					while ($row = mysqli_fetch_array($result2)) {
						$pum = $row["PUM"] > 0 ? $row["PUM"] : "";
						$pui = $row["PUI"] > 0 ? $row["PUI"] : "";
					    echo "['" . $row["Barangay"] . "', " . $pum . ", " . $pum .", " . $pui . ", " . $pui ."],";
					}
				 ?>
				]);


			var options = {
					title: 'Confirmed Cases by Barangay',
					hAxis: {
						title: 'Confirmed Cases',
						format: 'short'
					},
					vAxis: {
						title: 'Barangay'
					},
					legend: { position: 'top', maxLines: 3 },
					isStacked: true,
			};
			var chart = new google.visualization.BarChart(document.getElementById('barchart'));
			chart.draw(data, options);
		}
	</script>
</head>
<style type="text/css">
	#piechart, #barchart {
		width: 750px; height: 500px; display: inline-block;
	}
</style>
<body>
	<br><br>
	<div style="widows: 1500px;">
		<h3 align="center">Make Simple Pie Chart by Google Chart API using PHP Mysql</h3>
		<br>
		<div id="piechart"></div>
		<div id="barchart"></div>
	</div>

</body>
</html>