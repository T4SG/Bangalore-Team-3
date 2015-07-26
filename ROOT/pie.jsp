<!doctype html>
<html>
	<head>
		<title>Pie Chart</title>
		<script src="./Chart.js/Chart.js"></script>
	</head>
	<body>
	<%
		

	%>
		<div id="canvas-holder">
			<canvas id="chart-area" width="300" height="300"/>
		</div>


	<script>

		var pieData = [
				{
					value: 150,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "RegisteredDropouts"
				},
				{
					value: 50,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "Others"
				},
				{
					value: 100,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "UnregeisteredDropout"
				},
				{
					value: 40,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "PlacedDropouts"
				},
				

			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};



	</script>
	</body>
</html>
