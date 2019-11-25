<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Safe Food - 당신의 안전한 먹거리를 위하여</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />

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

<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">

<style type="text/css">
#regitForm {
	z-index: 50;
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
		<form method="post" action="updateUser.do" class="form-horizontal"
			style="margin: 0 auto; padding: 20px; width: 60%;">
			<div class="form-group">
				<label for="inputid" class="control-label">아 이 디</label> <input
					type="text" class="form-control" id="id" name="id" placeholder=""
					value="${member.id}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="inputPassword" class="control-label">비밀 번호</label> <input
					type="password" class="form-control" id="password" name="password"
					placeholder="영문 숫자 포함 6자리 이상">
			</div>

			<div class="form-group">
				<label class="control-label">이름</label> <input type="text"
					class="form-control" id="name" name="name" placeholder="User name"
					value="${member.name}">
			</div>

			<div class="form-group">
				<label class="control-label">이메일</label> <input type="text"
					class="form-control" id="email" name="email"
					placeholder="User email" value="${member.email}">
			</div>

			<div class="form-group">
				<label class="control-label">주소</label> <input type="text"
					class="form-control" id="address" name="address" placeholder="주소"
					value="${member.address}">
			</div>

			<div class="form-group">
				<label>전화 번호</label> <input type="tel" class="form-control"
					id="phone" name="phone" placeholder="010-xxx-xxxx"
					value="${member.phone}">
			</div>

			<div class="form-group" style="text-align: center;">
				<label for="" class="col-sm-2 control-label">Check</label>
				<fieldset style="border: solid 1px white;">
					<input class="form-check-input" type="checkbox" id="gridCheck1"
						name="allergy" value="대두"
						<c:if test="${fn:contains(member.allergy, '대두')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 대두 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="땅콩"
						<c:if test="${fn:contains(member.allergy, '땅콩')}">
											checked
											</c:if>>
					<label> 땅콩 </label> &nbsp;&nbsp;&nbsp; <input
						class="form-check-input" type="checkbox" id="gridCheck2"
						name="allergy" value="우유"
						<c:if test="${fn:contains(member.allergy, '우유')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 우유 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="게"
						<c:if test="${fn:contains(member.allergy, '게')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 게 </label> <br>
					<input class="form-check-input" type="checkbox" id="gridCheck2"
						name="allergy" value="새우"
						<c:if test="${fn:contains(member.allergy, '새우')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 새우 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="참치"
						<c:if test="${fn:contains(member.allergy, '참치')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 참치 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="연어"
						<c:if test="${fn:contains(member.allergy, '연어')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 연어 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="쑥"
						<c:if test="${fn:contains(member.allergy, '쑥')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 쑥 </label> <br>
					<input class="form-check-input" type="checkbox" id="gridCheck2"
						name="allergy" value="소고기"
						<c:if test="${fn:contains(member.allergy, '소고기')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 소고기 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="닭고기"
						<c:if test="${fn:contains(member.allergy, '닭고기')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 닭고기 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="돼지고기"
						<c:if test="${fn:contains(member.allergy, '돼지고기')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 돼지고기 </label> <br>
					<input class="form-check-input" type="checkbox" id="gridCheck2"
						name="allergy" value="복숭아"
						<c:if test="${fn:contains(member.allergy, '복숭아')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 복숭아 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="민들레"
						<c:if test="${fn:contains(member.allergy, '민들레')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 민들레 </label>
					&nbsp;&nbsp;&nbsp; <input class="form-check-input" type="checkbox"
						id="gridCheck2" name="allergy" value="계란흰자"
						<c:if test="${fn:contains(member.allergy, '계란흰자')}">
											checked
											</c:if>>
					<label class="form-check-label" for="gridCheck1"> 계란흰자 </label>

				</fieldset>
			</div>
			<div style="text-align: center; margin-bottom: 15px;">
			<input type="hidden" name="_method" value="put">
				<input type="submit" name="update" value='수정하기'> 
				<a href="deleteUser.do?id=${member.id}">
				<input type="button" name="signOut" value='탈퇴하기 '>
				</a> 
				<input type="reset" name="cancel" value='취소'>
			</div>
		</form>
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