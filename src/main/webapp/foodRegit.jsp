<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">
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
    
    <style type="text/css">
    	#regitForm{
    		z-index:50;	
    	}
    
    </style>
	<style type="text/css">
		.slider-wrap:after {
			display: none;
		}
	</style>
  </head>
  <body>
    
    <header role="banner">
      <jsp:include page="nav.jsp"></jsp:include>
    </header>
	<jsp:include page="foodSlider.jsp"></jsp:include>
	
<section class="section bg-light" style="padding: 3em">
	<form method="post" action="insertFood.do" id="regitForm" class="form-horizontal" 
		style=" margin: 0 auto;  padding: 20px;  width : 60%;" enctype="Multipart/form-data">
		<div class="form-group">
			<label for="inputid" class="control-label">코드</label> 
			<input	type="text" class="form-control" id="code" name= "code" placeholder="FoodCode">
		</div>

		<div class="form-group">
			<label for="inputPassword" class="control-label">제품명</label> 
			<input	type="text" class="form-control" id="name" name="name" placeholder="FoodName">
		</div>

		<div class="form-group">
			<label class="control-label">제조사</label> 
			<input type="text" class="form-control" id="maker" name="maker" placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">재료</label> 
			<input type="text" class="form-control" id="material" name = "material" placeholder="">
		</div>

		<div class="form-group">
			<label class="control-label">일일제공량</label> 
			<input type="text"	class="form-control" id="supportpereat" name ="supportpereat"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">칼로리</label> 
			<input type="text"	class="form-control" id="calory" name ="calory"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">탄수화물</label> 
			<input type="text"	class="form-control" id="carbo" name ="carbo"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">단백질</label> 
			<input type="text"	class="form-control" id="protein" name ="protein"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">지방</label> 
			<input type="text"	class="form-control" id="fat" name ="fat"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">당류</label> 
			<input type="text"	class="form-control" id="sugar" name ="sugar"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">나트륨</label> 
			<input type="text"	class="form-control" id="natrium" name ="natrium"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">콜레스테롤</label> 
			<input type="text"	class="form-control" id="chole" name ="chole"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">포화지방산</label> 
			<input type="text"	class="form-control" id="fattyacid" name ="fattyacid"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">트랜스지방</label> 
			<input type="text"	class="form-control" id="transfat" name ="transfat"  placeholder="">
		</div>
		
		<div class="form-group">
			<label class="control-label">이미지 업로드(jpg / jpeg / png)</label> 
			<input type="file" value="파일 선택" class="form-control" id="img" name ="foodImg" accept=".jpg, .jpeg, .png">
		</div>

		
		<div style="text-align:center; margin-bottom:15px;">
			<input type="submit" name ="signup" value='등록하기' >
			<input type="reset" name ="cancel" value='취소' >
		</div>
	</form>
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
</html>