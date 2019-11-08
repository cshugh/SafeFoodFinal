<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="news.jsp">Safe Food<a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarsExample05" aria-controls="navbarsExample05"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsExample05">
					<ul class="navbar-nav ml-auto pl-lg-5 pl-0">
						<li class="nav-item"><a class="nav-link" href="index.html">��������</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="recipes.html">��ǰ
								����</a></li>
						<li class="nav-item"><a class="nav-link" href="recipes.html">����Ʈ
								���� ����</a></li>

						<li class="nav-item"><a class="nav-link" href="about.html">��
								���� ����</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">����
								���� ����</a></li>
						<!-- <li class="nav-item">
                <a class="nav-link active" href="news.html">�λ�</a>
              </li> -->
					</ul>

					<ul class="navbar-nav ml-auto">
						<li class="nav-item cta-btn"><a class="nav-link"
							href="contact.html">Sign Up</a></li>
						<li class="nav-item cta-btn">
							<!-- <a class="nav-link" href="contact.html">Sign In</a> -->
							<button class="nav-link" id="loginBtn" onclick="openForm()"
								style="margin: auto; font-size: 1rem; color: white !important;">
								Sing In</button>
							<div id="loginPopup">
								<div class="form-popup" id="popupForm">
									<form action="/action_page.php" class="form-container">
										<label for="���̵�"> <strong>���̵�</strong>
										</label> <input type="text" id="email" placeholder="���̵� �Է��ϼ���."
											name="email" required> <label for="psw"> <strong>��й�ȣ</strong>
										</label> <input type="password" id="login_psw"
											placeholder="��й�ȣ�� �Է��ϼ���." name="psw" required>
										<button type="submit" class="btn" onclick="loginClick()">�α���</button>
										<button type="button" class="btn cancel" onclick="closeForm()">�ݱ�</button>
									</form>
								</div>
							</div>
						</li>
					</ul>

				</div>
	</div>
</nav>