<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
/*     function userIn() {
    	document.getElementById("userOut").style.display = "none";
    	document.getElementById("userIn").style.display = "block";
    }
    function userOut() {
    	document.getElementById("userIn").style.display = "none";
    	document.getElementById("userOut").style.display = "block";
    } */
	</script>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="main.jsp">Safe Food<a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample05" aria-controls="navbarsExample05"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample05">
			<ul class="navbar-nav ml-auto pl-lg-5 pl-0">
				<li class="nav-item"><a class="nav-link" href="index.html">공지사항</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="searchAllFood.do">상품
						정보</a></li>
				<li class="nav-item"><a class="nav-link" href="recipes.html">베스트
						섭취 정보</a></li>
			</ul>
			<c:choose>
				<c:when test="${not empty user}">
				<ul class="navbar-nav ml-auto" id = "userIn">
					<li class="nav-item cta-btn"><a class="nav-link" href="regitUser.do">${user}님 안녕하세요!</a></li>
					<li class="nav-item cta-btn"><a class="nav-link" href="logout.do">Sign Out</a></li>
				</ul>
				
			</c:when>
				<c:otherwise>
					<ul class="navbar-nav ml-auto" id = "userOut">
						<li class="nav-item cta-btn"><a class="nav-link" href="regitUser.do">Sign Up</a></li>
						<li class="nav-item cta-btn">
							<!-- <a class="nav-link" href="contact.html">Sign In</a> -->
							<button id="loginBtn" onclick="openForm()">Sign In</button>
							<div id="loginPopup">
								<div class="form-popup" id="popupForm">
									<form action="login.do" class="form-container">
										<label for="아이디"> <strong>아이디</strong>
										</label> <input type="text" id="email" placeholder="아이디를 입력하세요."
											name="email" required> <label for="psw"> <strong>비밀번호</strong>
										</label> <input type="password" id="login_psw"
											placeholder="비밀번호를 입력하세요." name="psw" required>
										<button type="submit" class="btn" onclick="loginClick()">로그인</button>
										<button type="button" class="btn cancel" onclick="closeForm()">닫기</button>
									</form>
								</div>
							</div>
						</li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>