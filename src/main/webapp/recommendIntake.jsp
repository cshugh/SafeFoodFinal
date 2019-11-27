<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<style>
.wrapperSex {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-gap: 5px;
	grid-auto-rows: minmax(100px, auto);
	text-align: center;
}
.sexTitle{
 	  border: none;
	  outline: 0;
	  padding: 3px;
	  color: white;
	  background-color: #333;
	  text-align: center;
	  width: 100%;
	  font-size: 15px;
}
.man {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	border-radius: 5px;
	padding: 5px;
	padding-top:20px;
}

.men:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.women {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	border-radius: 5px;
	padding: 5px;
	padding-top:20px;
}

.women:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.menContainer {
	padding: 2px 16px;
	background: white;
}

.womenContainer {
	padding: 2px 16px;
	background: white;
}

.wrapperUnisex {
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	grid-auto-rows: minmax(100px, auto);
	text-align: center;
}

.unisex {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	border-radius: 5px;
	padding: 5px;
	padding-top:20px;
}

.unisex:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.unisexContainer {
	padding: 2px 16px;
	background: white;
}
</style>

</head>
<body>
	<div class="container">
		<div style="text-font:22px; padding:10px; text-align:center; color: black; border-bottom:1px solid gray; margin:10px"><b>영양소 1일 권장섭취량 기준</b></div>
		<div class="row">
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">칼로리(kcal)</div>
					<div class="wrapperSex">
						<div class="man">
							<i class="fa fa-mars"
								style="font-size: 36px; color: rgba(152, 200, 248)"></i><span>Men</span>
							<div class="menContainer">
								<h5>
									<b>2600</b>
								</h5>
							</div>
						</div>
						<div class="women">
							<i class="fa fa-venus"
								style="font-size: 36px; color: rgba(248, 140, 152)"></i><span>Women</span>
							<div class="womenContainer">
								<h5>
									<b>2600</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">탄수화물(%)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>55-65</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">단백질(g)</div>
					<div class="wrapperSex">
						<div class="man">
							<i class="fa fa-mars"
								style="font-size: 36px; color: rgba(152, 200, 248)"></i><span>Men</span>
							<div class="menContainer">
								<h5>
									<b>65</b>
								</h5>
							</div>
						</div>
						<div class="women">
							<i class="fa fa-venus"
								style="font-size: 36px; color: rgba(248, 140, 152)"></i><span>Women</span>
							<div class="womenContainer">
								<h5>
									<b>55</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">지방</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>15-30</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">당류(%)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>10-20</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">나트륨(mg)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>2000</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="row" >
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">콜레스테롤(mg)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>300 미만</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">포화지방산(%)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>7 미만</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
				<div class="blog d-block">
					<div class="sexTitle">트랜스지방(%)</div>
					<div class="wrapperUnisex">
						<div class="unisex">
							<i class="fa fa-venus-mars"
								style="font-size: 36px; color: rgba(152, 248, 200)"></i><span>Unisex</span>
							<div class="unisexContainer">
								<h5>
									<b>1 미만</b>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style=" padding:10px; text-align:center; color: black; border-top:1px solid gray; margin:10px"></div>
	</div>



</body>
