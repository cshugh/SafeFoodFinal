<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>detailList</title>
<link rel="stylesheet" href="css/index.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="dist/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<script type='text/javascript' src='js/jquery-3.3.1.js'></script>
<script type="text/javascript">
$(function(){
				DoughnutChart();
});

function DoughnutChart() {		
	// 우선 컨텍스트를 가져옵니다. 
	var ctx = document.getElementById("myChart").getContext('2d');
	/*
	 - Chart를 생성하면서, 
	 - ctx를 첫번째 argument로 넘겨주고, 
	 - 두번째 argument로 그림을 그릴때 필요한 요소들을 모두 넘겨줍니다. 
	 */
	var myChart = new Chart(ctx,
			{
				type : 'doughnut',
				data : {
					labels : [ "칼로리", "탄수화물", "단백질", "지방", "당류", "나트륨",
							"콜레스테롤", "포화지방산", "트랜스지방" ],
					datasets : [ {
						label : '# of Votes',
						data : [ ${food.calory}, ${food.carbo}, ${food.protein}, ${food.fat}, ${food.sugar}, ${food.natrium},
								${food.chole}, ${food.fattyacid}, ${food.transfat} ],
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

#table td {
	text-align: left;
}

#table th {
	width: 5%;
}
</style>


  <head>
    <title>Safe Food - 당신의 안전한 먹거리를 위하여</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Free-Template.co" />

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

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
  </head>
 <header role="banner">
   <jsp:include page="nav.jsp"></jsp:include>
</header>
<body role="document">
    <div class="slider-wrap">
      <div class="slider-item" style="background-image: url('img/hero_1.jpg');">
        <!-- 내용 첨가할 것 -->
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 ">
              <h1 data-aos="fade-up">What We Provide</h1>
              <p class="mb-5" data-aos="fade-up" data-aos-delay="100">건강한 삶을 위한 먹거리 프로젝트</p>
               
            </div>
          </div>
		</div>
      </div>
    <!-- END slider -->
    </div> 
    
 	<div class = "section bg-dark pt-0  ">
		<ul>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="services.html"
				id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" >검색 조건</a>
				<div class="dropdown-menu" aria-labelledby="dropdown04">
					<a class="dropdown-item" href="services.html">이름</a> <a
						class="dropdown-item" href="services.html">제조사</a> <a
						class="dropdown-item" href="services.html">재료명</a>
				</div>
				<input data-aos="fade-up" data-aos-delay="200"><a
					href="#" class="btn btn-white btn-outline-white">검색하기</a>
					</li>
		</ul>
	</div>	
	<div id="title">
		<h1>제품 정보</h1>
	</div>
	<br />
	<div class="container" style=" text-align: center">
		<i class="fa fa-github-square" style="font-size: 80px;"></i>
	</div>
	<br/>
	<div class="table-responsive">
		<table id="table" class="table" style="margin: auto;">
			<tr>
				<td rowspan='6' width='30%' align="center">
				<img id="Picture" src="img/${food.name}.jpg" width='200px' height='200px'>
				</td>
			</tr>
			<tr>
				<th>제품명</th>
				<td id="FName">${food.name}</td>
			</tr>
			<tr>
				<th>제조사</th>
				<td id="Brand">${food.maker}</td>
			</tr>
			<tr>
				<th>원재료</th>
				<td id="Ingredient">${food.material}</td>
			</tr>
			<tr>
				<th>알레르기성분</th>
				<td>${food.allergy}</td>
			</tr>
			<tr>
				<th align='left'>Quantity&nbsp;<br /> <input type="number"
					required="required" min="1" id='person' />
				<p />
					<br />
					<button type='button' class='btn btn-info'>추가</button>
					<button type='button' class='btn btn-info'>찜</button>
				</th>
				<td></td>
			</tr>
		</table>
	</div>
	<br />
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<canvas id="myChart"></canvas>
			</div>
			<div class="col-md-6">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<th>일일 제공량</th>
							<td id="Serving">${food.supportpereat}</td>
						</tr>
						<tr>
							<th>칼로리</th>
							<td id="Cal">${food.calory}</td>
						</tr>
						<tr>
							<th>탄수화물</th>
							<td id="Calbo">${food.carbo}</td>
						</tr>
						<tr>
							<th>단백질</th>
							<td id="Protein">${food.protein}</td>
						</tr>
						<tr>
							<th>지방</th>
							<td id="Fat">${food.fat}</td>
						</tr>
						<tr>
							<th>당류</th>
							<td id="Sweet">${food.sugar}</td>
						</tr>
						<tr>
							<th>나트륨</th>
							<td id="Natrum">${food.natrium}</td>
						</tr>
						<tr>
							<th>콜레스테롤</th>
							<td id="Coles">${food.chole}</td>
						</tr>
						<tr>
							<th>포화지방산</th>
							<td id="GoodFat">${food.fattyacid}</td>
						</tr>
						<tr>
							<th>트랜스지방</th>
							<td id="TransFat">${food.transfat}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	    <footer class="site-footer" role="contentinfo">
     	<jsp:include page="footer.jsp"></jsp:include>
    </footer>
    <!-- END footer -->

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#cf1d16"/></svg></div>

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