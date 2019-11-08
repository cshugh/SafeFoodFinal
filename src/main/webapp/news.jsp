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
    <script>
    function openForm() {
    	document.getElementById("loginPopup").style.display = "block";
    }
    function loginClick() {
    	document.getElementById("loginBtn").innerHTML = "Sign Out";
    }
    function closeForm() {
    	document.getElementById("loginPopup").style.display = "none";
    	document.getElementById("loginBtn").innerHTML = "Sign In";
    }
    window.onclick = function(event) {
    	var modal = document.getElementById('loginPopup');
    	if (event.target == modal) {
    		closeForm();
    	}
    }
</script>
  </head>
  <body>
    
    <header role="banner">
      <jsp:include page="nav.jsp"></jsp:include>
    </header>
    <!-- END header -->
	<jsp:include page="mainSlider.jsp"></jsp:include>    	
    <!-- END slider -->
	
	<section class="section bg-light pt-0 bottom-slant-gray">
		<div class="container">
			<div class="row">
				<div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
					<div class="blog d-block">
						<a class="bg-image d-block" href="single.html"
							style="background-image: url('img/누크바3.jpg');"></a>
						<div class="text">
							<h3>
								<a href="single.html">식품명</a>
							</h3>
							<p class="sched-time">
								<span><span class="fa fa-calendar"></span> April 22, 2018</span>
								<br>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>

							<p>
								<a href="#" class="btn btn-primary btn-sm">추가</a>
								<a href="#" class="btn btn-primary btn-sm">찜</a>
							</p>

						</div>

					</div>
				</div>
				<div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
					<div class="blog d-block">
						<a class="bg-image d-block" href="single.html"
							style="background-image: url('img/누크바2.jpg');"></a>
						<div class="text">
							<h3>
								<a href="single.html">식품명</a>
							</h3>
							<p class="sched-time">
								<span><span class="fa fa-calendar"></span> April 22, 2018</span>
								<br>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
							<p>
								<a href="#" class="btn btn-primary btn-sm">추가</a>
								<a href="#" class="btn btn-primary btn-sm">찜</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
					<div class="blog d-block">
						<a class="bg-image d-block" href="single.html"
							style="background-image: url('img/신라면큰사발2.jpg');"></a>
						<div class="text">
							<h3>
								<a href="single.html">식품명</a>
							</h3>
							<p class="sched-time">
								<span><span class="fa fa-calendar"></span> April 22, 2018</span>
								<br>
							</p>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
							<p>
								<a href="#" class="btn btn-primary btn-sm">추가</a>
								<a href="#" class="btn btn-primary btn-sm">찜</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row mt-5" data-aos="fade-up">
			<div class="col-12 text-center">
				<a href="#" class="p-3">1</a> <a href="#" class="p-3">2</a> <a
					href="#" class="p-3">3</a> <span class="p-3">...</span> <a href="#"
					class="p-3">5</a>
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
</html>