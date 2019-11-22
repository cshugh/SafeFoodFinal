<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<script type="text/javascript">


</script>
<style type="text/css">
#select{
	background-color: #282828;
	 border-radius:4px;
	width:90px; height:35px;
	color : white;
	opacity: 0.8;
}

#searchInput{
	border-radius:4px;
	height:35px;
	opacity: 0.8;
}



button{
  background:#8B6331;
  color:#fff;
  border:none;
  position:relative;
  height:35px;
  width:100px;
  font-size:1em;
border-radius:5px;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#8B6331;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background:#8B6331;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
#searchForm{
	margin: auto;
}


</style>
</head>

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
				<div class="newsection col-md-5 text-center col-sm-12">
				<form method="get" action="searchFoodByCondition.do">
					<table id="searchForm">
						<tr>
							<td>
								<div class="selectbox">
									<select id="select" name="key" >
										<option selected="selected" value="none" selected disabled
											hidden>검색조건</option>
										<option value="name">이름</option>
										<option value="maker">제조사</option>
										<option value="material">재료명</option>
									</select>
								</div>
							</td>
							<td>
								<input data-aos="fade-up" data-aos-delay="200" id="searchInput" name="value">
								<button type="submit" id="searchbtn" >Search</button>
							</td>
						</tr>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>