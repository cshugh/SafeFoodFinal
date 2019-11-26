<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#test_btn1{
 border-top-left-radius: 5px; 
border-bottom-left-radius: 5px; margin-right:-4px; 
} 

#test_btn2{ border-top-right-radius: 5px; 
border-bottom-right-radius: 5px; 
margin-left:-3px; 
} 

#btn_group button{ 
border: 1px solid skyblue; 
background-color: rgba(0,0,0,0); 
color: skyblue; 
padding: 5px; } 

#btn_group button:hover{ 
color:white;
 background-color: skyblue; 
 } 
 </style>

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
    
    function userIn() {
    	document.getElementById("#userOut").style.display = "none";
    	document.getElementById("#userIn").style.display = "block";
    }
    /*
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
				<li class="nav-item"><a class="nav-link" href="notice.do">공지사항</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="searchAllFood.do">상품
						정보</a></li>
				<li class="nav-item"><a class="nav-link" href="qna.do">Q&A</a></li>
			</ul>
			<ul class="navbar-nav ml-auto" id="userIn" style="display: ${(empty user) ? 'none': 'block'};">
				<li class="nav-item cta-btn"><a class="nav-link" href="#">${user}님	안녕하세요!</a></li>
				<li class="nav-item cta-btn"><a class="nav-link" href="infoUser.do">My Page</a></li>
				<li class="nav-item cta-btn"><a class="nav-link" href="logout.do">Sign Out</a></li>
			</ul>
			<ul class="navbar-nav ml-auto" id="userOut" style="display: ${(not empty user) ? 'none': 'block'};">
				<li class="nav-item cta-btn"><a class="nav-link" href="regitUser.do">Sign Up</a></li>
				<li class="nav-item cta-btn">
					<a class="nav-link" id="loginBtn" onclick="openForm()">Sign In</a>
					<div id="loginPopup">
						<div class="form-popup" id="popupForm" style="border-radius:5px; border-style:none">
							<form method="post" action="login.do" class="form-container" 
							 style="border-radius:5px; border-style:none">
								<label for="아이디"> <strong>아이디</strong>
								</label> <input type="text" id="user" name="user"
									placeholder="아이디를 입력하세요." required> <label for="psw">
									<strong>비밀번호</strong>
								</label> <input type="password" id="password"
									placeholder="비밀번호를 입력하세요." name="password" required>
								<div id="btn_group">
								<button type="submit" id="test_btn1" class="btn" onclick="loginClick()">로그인</button>
								<button type="button" id="test_btn1" class="btn cancel" onclick="closeForm()">닫기</button>
								</div>
							</form>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</nav>