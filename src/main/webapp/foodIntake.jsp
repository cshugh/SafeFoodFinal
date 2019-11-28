<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,  shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />
<title>Safe FoodIntake - 내 섭취 정보</title>

<link rel="shortcut icon" href="ftco-32x32.png">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script type='text/javascript' src='js/jquery-3.3.1.js'></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
      $(function(){
    	  drawChart();
    	  
  });
    var pickFood = '${pickFood}';
	var sumFood ='${sumFood}';
	var data ;
	var data2;
	function drawChart(){
		data = new google.visualization.DataTable();
		data2 = new google.visualization.DataTable();
		data.addColumn('string','영양소');
		data.addColumn('number','칼로리');
		data.addColumn('number','탄수화물');
		data.addColumn('number','단백질');
		data.addColumn('number','지방');
		data.addColumn('number','당류');
		data.addColumn('number','나트륨');
		data.addColumn('number','콜레스테롤');
		data.addColumn('number','포화지방산');
		data.addColumn('number','트랜스지방');
		data.addRow([' ',parseInt('${sumFood.calory}',10)
			,parseInt('${sumFood.carbo}',10)
			,parseInt('${sumFood.protein}',10)
			,parseInt('${sumFood.fat}',10)
			,parseInt('${sumFood.sugar}',10)
			,parseInt('${sumFood.natrium}',10)
			,parseInt('${sumFood.chole}',10)
			,parseInt('${sumFood.fattyacid}',10)
			,parseInt('${sumFood.transfat}',10)]);
		data2.addColumn('string','영양소');
		data2.addColumn('number','칼로리');
		data2.addColumn('number','탄수화물');
		data2.addColumn('number','단백질');
		data2.addColumn('number','지방');
		data2.addColumn('number','당류');
		data2.addColumn('number','나트륨');
		data2.addColumn('number','콜레스테롤');
		data2.addColumn('number','포화지방산');
		data2.addColumn('number','트랜스지방');
		data2.addRow([' ',parseInt('${pickFood.calory}',10)
			,parseInt('${pickFood.carbo}',10)
			,parseInt('${pickFood.protein}',10)
			,parseInt('${pickFood.fat}',10)
			,parseInt('${pickFood.sugar}',10)
			,parseInt('${pickFood.natrium}',10)
			,parseInt('${pickFood.chole}',10)
			,parseInt('${pickFood.fattyacid}',10)
			,parseInt('${pickFood.transfat}',10)]);
		
		options = {
			chart: {
				maintainAspectRatio : true
			}
		};
		option2 = {
			chart: {
				maintainAspectRatio : true
			}
		};
		chart = new google.charts.Bar(document
				.getElementById('chart_div'));
		chart2 = new google.charts.Bar(document.getElementById('chart_div2'))
		chart.draw(data, google.charts.Bar.convertOptions(options));
		chart2.draw(data2, google.charts.Bar.convertOptions(option2)); 
	}
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

.table td {
	text-align: center;
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
	
	<section class="section bg-light pt-0 bottom-slant-gray"
		style="margin-top: 50px;">
		<c:choose>
			<c:when test="${empty user}">
				<div style="text-align:center; padding-top:100px;">로그인 정보가 필요합니다.</div>
			</c:when>
			<c:otherwise>
				<div id="title">
					<h3>
						<b>내 섭취 정보</b>
					</h3>
				</div>

				<div class="container">
					<div class="row">
						<div class="table-responsive">
							<table class="table"
								style="margin: auto; margin-top: 30px; margin-bottom: 30px;">
								<tr
									style="height: 50px; background: #333; text-align: center; color: white;">
									<td>번호</td>
									<td>사진</td>
									<td>이름</td>
									<td>브랜드</td>
									<td>알러지유발요소</td>
									<td>칼로리</td>
								</tr>
								<c:forEach items="${userFoodList}" var="food" varStatus="status">
									<tr 
										style="height: 100px; text-align: center; border-bottom: 0.5px solid gray"
										onclick="location.href='foodDetail.do?code=${food.code}'">
										<td style="padding-top:45px">${status.count}</td>
										<td width='100px' align="center"><img
											src="img/${food.name}.jpg" width='95px' height='95px'
											style="object-fit: cover;"></td>
										<td style="padding-top:45px">${food.name}</td>
										<td style="padding-top:45px">${food.maker}</td>
										<td style="padding-top:45px">${food.allergyIngredients}</td>
										<td style="padding-top:45px">${food.calory}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>

					<div id="title">
						<h3>
							<b>찜한 식품 정보</b>
						</h3>
					</div>

					<div class="container">
						<div class="row">
							<div class="table-responsive">
								<table class="table"
									style="margin: auto; margin-top: 30px; margin-bottom: 30px;">
									<tr
										style="height: 50px; background: #333; text-align: center; color: white;">
										<td>번호</td>
										<td>사진</td>
										<td>이름</td>
										<td>브랜드</td>
										<td>알러지유발요소</td>
										<td>칼로리</td>
										<td></td>
									</tr>
									<c:forEach items="${pickList}" var="food" varStatus="status">
										<tr
											style="height: 100px; text-align: center; border-bottom: 0.5px solid gray">
											<%-- onclick="location.href='foodDetail.do?code=${food.code}'"> --%>
											<td style="padding-top:45px">${status.count}</td>
											<td width='100px' align="center"><img
												src="img/${food.name}.jpg" width='95px' height='95px'
												style="object-fit: cover;"></td>
											<td style="padding-top:45px">${food.name}</td>
											<td style="padding-top:45px">${food.maker}</td>
											<td style="padding-top:45px">${food.allergyIngredients}</td>
											<td style="padding-top:45px">${food.calory}</td>
											<td style="padding-top:45px">
												<button
													onclick="location.href='pickDelete.do?fno=${food.code}'">삭제</button>
											</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6" style="padding:15px;text-align:center;">
							<h5><b>섭취</b></h5>
								
								<div id="chart_div" style="height:500px;"></div>
							</div>
							<div class="col-md-6" style="padding:15px;text-align:center;">
								<h5><b>찜</b></h5>
								<div id="chart_div2" style="height:500px"></div>
							</div>
						</div>
					</div>
					</div>
			</c:otherwise>
		</c:choose>
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

</body>

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<script src="js/main.js"></script>
</html>
