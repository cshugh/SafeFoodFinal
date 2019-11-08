<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
          <a class="navbar-brand" href="news.jsp">Safe Food<a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarsExample05">
            <ul class="navbar-nav ml-auto pl-lg-5 pl-0">
              <li class="nav-item">
                <a class="nav-link" href="index.html">공지사항</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="recipes.html">상품 정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="recipes.html">베스트 섭취 정보</a>
              </li>
             
              <li class="nav-item">
                <a class="nav-link" href="about.html">내 섭취 정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">예상 섭취 정보</a>
              </li>
              <!-- <li class="nav-item">
                <a class="nav-link active" href="news.html">인생</a>
              </li> -->
            </ul>

            <ul class="navbar-nav ml-auto">
           	 <li class="nav-item cta-btn">
                <a class="nav-link" href="contact.html">Sign Up</a>
              </li>
              <li class="nav-item cta-btn">
                <!-- <a class="nav-link" href="contact.html">Sign In</a> -->
                <button class="nav-link" id="loginBtn" onclick="openForm()"
                style="margin:auto; font-size: 1rem; color: white !important;
                @media (max-width: 1199px) { padding: .5rem 0rem; };">
                Sing In
                </button>
                <div id="loginPopup">
					<div class="form-popup" id="popupForm">
						<form action="/action_page.php" class="form-container">
							<label for="아이디"> <strong>아이디</strong>
							</label> <input type="text" id="email" placeholder="아이디를 입력하세요."
								name="email" required> <label for="psw"> <strong>비밀번호</strong>
							</label> <input type="password" id="login_psw" placeholder="비밀번호를 입력하세요."
								name="psw" required>
							<button type="submit" class="btn" onclick="loginClick()">로그인</button>
							<button type="button" class="btn cancel" onclick="closeForm()">닫기</button>
						</form>
					</div>
				</div>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>