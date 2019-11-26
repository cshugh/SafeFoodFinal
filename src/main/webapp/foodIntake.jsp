<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,  shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />
<title>Safe FoodIntake - 내 섭취 정보</title>

<link rel="shortcut icon" href="ftco-32x32.png">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<script type='text/javascript' src='js/jquery-3.3.1.js'></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages' : ['corechart']});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
	var data = google.visualization.arrayToDataTable([
		['Month' , 'B', 'E', 'M', 'P' ,'R', 'A'],
		['2004/05' , 165, 938, 522, 998 ,450,614.6],
		['2005/06' , 135, 1120, 599, 1268 ,288,682],
		['2006/07' , 157, 1167, 587, 807 ,397,623],
		['2007/08' , 139, 1110, 615, 968 ,215,609.4],
		['2008/09' , 136, 691, 629, 1026 ,366,569.6],
	]);
	var options = {
			title : 'Monthly Coffe Production by Country',
			vAxis : {title: 'Cups'},
			hAxis : {title: 'Month'},
			seriesType : 'bars',
			series : {5:{type: 'line'}}
	};
	var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
	chart.draw(data,options);
}
/*$(function (){
		DoughnutChart();
});

function DoughnutChart() {		
	// 우선 컨텍스트를 가져옵니다. 
	var ctx = document.getElementById("myChart").getContext('2d');
	
	// - Chart를 생성하면서, 
	 - ctx를 첫번째 argument로 넘겨주고, 
	 // - 두번째 argument로 그림을 그릴때 필요한 요소들을 모두 넘겨줍니다. 
	
	var myChart = new Chart(ctx,
			{
				type : 'doughnut',
				data : {
					labels : [ "칼로리", "탄수화물", "단백질", "지방", "당류", "나트륨",
							"콜레스테롤", "포화지방산", "트랜스지방" ],
					datasets : [ {
						label : '# of Votes',
						data : [${food.calory}, ${food.carbo}, ${food.protein}, ${food.fat}, ${food.sugar}, ${food.natrium},
								${food.chole}, ${food.fattyacid}, ${food.transfat}],
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)',
								'rgba(255, 215, 000, 0.2)',
								'rgba(075, 000, 130, 0.2)',
								'rgba(105, 105, 105, 0.2)' ],
						borderColor : [ 'rgba(255,99,132,1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)',
								'rgba(255, 215, 000, 1)',
								'rgba(075, 000, 130, 1)',
								'rgba(105, 105, 105, 1)' ],
						borderWidth : 1
					} ]
				},
				options : {
					maintainAspectRatio : true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
	} */


</script>
<style>
#title {
	text-align: center;
}

.table {
	margin: auto;
	align: center;
	width: 80%;
}

#table td {
	text-align: left;
}

#table th {
	width: 5%;
}
</style>

<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">
</head>
<body role="document">
	<header role="banner">
		<jsp:include page="nav.jsp"></jsp:include>
	</header>
	<jsp:include page="mainSlider.jsp"></jsp:include>

	<section class="section bg-light pt-0 bottom-slant-gray" style="margin-top:50px">
		<div id="title">
			<h1>내 섭취 정보</h1>
		</div>

		<div class="container">
		지금까지 먹은거
			<div class="row">
				
				<div class="table-responsive">
					<table id="table" class="table" style="margin: auto;">
						<tr>
							<td width='30%' align="center" rowspan='3'><img id="Picture"
								src="img/${food.name}.jpg" width='150px' height='150px'
								style="object-fit: cover;"></td>
							<td id="FName">${food.name}이름</td>
							<td id="Brand">${food.maker}브랜드</td>
							<td id="Alergy">${food.allergy}알러지요소</td>
							<td id="Ingredient">${food.material}원재료</td>
						</tr>
						<tr>
							<td id="FName">${food.name}d</td>
							<td id="Brand">${food.maker}b</td>
							<td id="Alergy">${food.allergy}a</td>
							<td id="Ingredient">${food.material}m</td>
						</tr>
					</table>

				</div>
			</div>
			<div class="row">
				<div class="col-md-6">

					<div id="chart_div"></div>
				</div>
				<div class="col-md-6">
					<div class="table-responsive"></div>
				</div>
			</div>
		</div>


	</section>
	<footer class="site-footer" role="contentinfo">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- END footer -->

	<!-- loader -->
	<div id="loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#cf1d16" /></svg>
	</div>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
