<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Safe FoodInfo - 식품 정보</title>
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

	<style type="text/css">
		#materialTable  td {
		border:1px solid black;
		}
		
		#materialTable{
		width: 500px;
		}
		.wrapperGrid {
			display: grid;
			grid-template-columns: repeat(3, 1fr);
			grid-gap: 10px;
			grid-auto-rows: minmax(60px, auto);
			text-align: center;
			padding-bottom:10px;
		}
		.innerTitle{
	 	  border: none;
		  outline: 0;
		  color: black;
		  font-weight:bold;
		  background-color: rgba(170,238,240);
		  text-align: center;
		  width: 100%;
		  font-size: 10px;
		}
		.innerGrid {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			transition: 0.3s;
			width: 100%;
			border-radius: 5px;
			padding: 5px;
		}
		
		.innerGrid:hover {
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
		}
		.alergyTitle{
	 	  border: none;
		  outline: 0;
		  color: white;
		  font-weight:bold;
		  background-color: rgba(240,38,17);
		  text-align: center;
		  width: 100%;
		  font-size: 15px;
		}
		.alergyWrapper{
			
			text-align: center;
			padding-bottom:10px;
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
			margin:10px;
			margin-top:0px;
		}
		
	</style>
  </head>
  <body>
    
    <header role="banner">
      <jsp:include page="nav.jsp"></jsp:include>
    </header>
    <!-- END header -->
	<jsp:include page="mainSlider.jsp"></jsp:include>    	
    <!-- END slider -->
	
	<section class="section bg-light pt-0 bottom-slant-gray" style="margin-top:50px">
		<jsp:include page="recommendIntake.jsp"></jsp:include>   
		<div class="container">
			<div class="row">
				<c:forEach items = "${foodList}" var = "food">
				<div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
					<div class="blog d-block">
						<a class="bg-image d-block" href="foodDetail.do?code=${food.code}"
							style="background-image: url(${food.img}); background-size:cover; background-repeat:no-repeat;"></a>
						<div class="text">
							<h3>
								<a href="foodDetail.do?code=${food.code}">${food.name}</a>
								&nbsp &nbsp
								<span>
								<label style="font-size:14px;font-weight:bold">${food.nation}</label>
								</span>
							</h3>
							<div class="infowrapper" style="margin:15px;padding:10px">
							<div class="wrapperGrid">
								<div class="innerGrid">
									<div class="innerTitle">칼로리</div>
									${food.calory}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">탄수화물</div>
									${food.carbo}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">단백질</div>
									${food.protein}
								</div>
							</div>
							<div class="wrapperGrid">
								<div class="innerGrid">
									<div class="innerTitle">지방</div>
									${food.fat}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">당류</div>
									${food.sugar}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">나트륨</div>
									${food.natrium}
								</div>
							</div>
							<div class="wrapperGrid">
								<div class="innerGrid">
									<div class="innerTitle">콜레스테롤</div>
									${food.chole}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">포화지방산</div>
									${food.fattyacid}
								</div>
								<div class="innerGrid">
									<div class="innerTitle">트랜스지방</div>
									${food.transfat}
								</div>
							</div>
							</div>
							<div class="alergyWrapper">
							<div class="alergyTitle">알러지 유발 요인</div>
							<c:forEach items="${food.listAllergy}" var="nutri">
								<c:choose>
									<c:when test="${fn:contains(allergies,nutri) }">
										<label style="color: red">${nutri}</label>
									</c:when>
									<c:otherwise>
										<label >${nutri}</label>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</div>
							<p>
								<a href="insertUserFood.do?fno=${food.code}" class="btn btn-primary btn-sm" style="font-weight:bold">추가</a>
								<a href="pickfood.do?fno=${food.code}" class="btn btn-primary btn-sm" style="background:rgba(34,174,76); border-color:rgba(34,174,76)">찜</a>
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>

	</section>

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
</html>-