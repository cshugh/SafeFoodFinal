<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="slider-wrap">
	<div class="slider-item"
		style="background-image: url('img/Food-spices-surface-world.jpg');">
		<!-- 내용 첨가할 것 -->
		<div class="container">
			<div
				class="row slider-text align-items-center justify-content-center">
				<div class="col-md-8 text-center col-sm-12 " style="margin-top:auto;">
					<h1 data-aos="fade-up">What We Provide</h1>
					<p class="mb-5" data-aos="fade-up" data-aos-delay="100">건강한 삶을
						위한 먹거리 프로젝트</p>
				</div>
				<div class="newsection col-md-6 text-center col-sm-12">
				<form method="post" action="searchAllFood.do">
					<ul>
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#"
							id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">검색 조건</a>
							<div class="dropdown-menu" aria-labelledby="dropdown04">
								<a class="dropdown-item" href="#" id="name" value="name">이름</a> 
								<a class="dropdown-item" href="#" id="maker"  value="maker">제조사</a> 
								<a class="dropdown-item" href="#" id="material"  value="material">재료명</a>
							</div></li>
						<li><input data-aos="fade-up" data-aos-delay="200"><a
							href="#" class="btn btn-white btn-outline-white">검색하기</a></li>
					</ul>
				</form>
				</div>
			</div>
		</div>
	</div>
</div>