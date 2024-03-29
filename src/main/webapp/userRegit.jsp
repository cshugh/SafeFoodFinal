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
	<jsp:include page="userSlider.jsp"></jsp:include>
	
<section class="section bg-light" style="padding: 3em">
	<form method="post" action="insertUser.do" id="regitForm" class="form-horizontal" 
		style=" margin: 0 auto;  padding: 20px;  width : 60%;">
		<div class="form-group">
			<label for="inputid" class="control-label">아 이 디</label> 
			<input	type="text" class="form-control" id="id" name= "id" placeholder="">
		</div>

		<div class="form-group">
			<label for="inputPassword" class="control-label">비밀 번호</label> 
			<input	type="password" class="form-control" id="password" name="password" placeholder="영문 숫자 포함 6자리 이상">
		</div>

		<div class="form-group">
			<label class="control-label">이름</label> 
			<input type="text" class="form-control" id="name" name="name" placeholder="User name">
		</div>
		
		<div class="form-group">
			<label class="control-label">이메일</label> 
			<input type="text" class="form-control" id="email" name = "email" placeholder="User email">
		</div>

		<div class="form-group">
			<label class="control-label">주소</label> 
			<input type="text"	class="form-control" id="address" name ="address"  placeholder="주소">
		</div>

		<div class="form-group">
			<label>전화 번호</label> 
			<input type="tel" class="form-control" id="phone" name = "phone" placeholder="010-xxx-xxxx">
		</div>

		<div class="form-group" style="text-align: center;">
			<label for="" class="col-sm-2 control-label">Check</label>
			<fieldset style="border: solid 1px white;">
				<div>
					<label> 
					<input type="checkbox" name='allergy' value='대두' /> 대두
					<input type="checkbox" name='allergy' value='땅콩' /> 땅콩 
					<input type="checkbox" name='allergy' value='우유' /> 우유 
					<input type="checkbox" name='allergy' value='게' /> 게
					</label>
				</div>
				<div>
					<label> 
					<input type="checkbox" name='allergy' value='새우' /> 새우
					<input type="checkbox" name='allergy' value='참치' /> 참치 
					<input type="checkbox" name='allergy' value='연어' /> 연어 
					<input type="checkbox" name='allergy' value='쑥' /> 쑥
					</label>	
				</div>
				<div>
					<label> 
					<input type="checkbox" name='allergy' value='소고기' /> 소고기 
					<input type="checkbox" name='allergy' value='닭고기' /> 닭고기 
					<input type="checkbox" name='allergy' value='돼지고기' /> 돼지고기
					</label>
				</div>
				<div>
					<label> 
					<input type="checkbox" name='allergy' value='복숭아' /> 복숭아 
					<input type="checkbox" name='allergy' value='민들레' /> 민들레 
					<input type="checkbox" name='allergy' value='계란흰자' /> 계란흰자
					</label>
				</div>
			</fieldset>
		</div>
		<div style="text-align:center; margin-bottom:15px;">
			<input type="submit" name ="signup" value='가입하기' >
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