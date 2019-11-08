<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form class="form-horizontal"
		style=" margin: 0 auto;  padding: 20px;  width : 60%;">
		<div class="form-group">
			<label for="inputid" class="control-label">아 이 디</label> 
			<input	type="text" class="form-control" id="id" placeholder="">
		</div>

		<div class="form-group">
			<label for="inputPassword" class="control-label">비밀 번호</label> 
			<input	type="password" class="form-control" id="pw" placeholder="영문 숫자 포함 6자리 이상">
		</div>

		<div class="form-group">
			<label class="control-label">이름</label> 
			<input type="text" class="form-control" id="name" placeholder="User name">
		</div>

		<div class="form-group">
			<label class="control-label">주소</label> 
			<input type="text"	class="form-control" id="address" placeholder="주소">
		</div>

		<div class="form-group">
			<label>전화 번호</label> 
			<input type="tel" class="form-control" id="phoneNumber" placeholder="010-xxx-xxxx">
		</div>

		<div class="form-group" style="text-align: center;">
			<label for="" class="col-sm-2 control-label">Check</label>
			<fieldset style="border: solid 1px white;">
				<div>
					<label> <input type="checkbox" name='Alergy' value='' /> 대두
						<input type="checkbox" name='Alergy' value='' /> 땅콩 <input
						type="checkbox" name='Alergy' value='' /> 우유 <input
						type="checkbox" name='Alergy' value='' /> 게
					</label>
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' /> 새우
						<input type="checkbox" name='Alergy' value='' /> 참치 <input
						type="checkbox" name='Alergy' value='' /> 연어 <input
						type="checkbox" name='Alergy' value='' /> 쑥
					</label>	
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' />
						소고기 <input type="checkbox" name='Alergy' value='' /> 닭고기 <input
						type="checkbox" name='Alergy' value='' /> 돼지고기
					</label>
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' />
						복숭아 <input type="checkbox" name='Alergy' value='' /> 민들레 <input
						type="checkbox" name='Alergy' value='' /> 계란흰자
					</label>
				</div>
			</fieldset>
		</div>
	</form>
	<div style="text-align:center; margin-bottom:15px;">
		<input type="button" name ="signup" value='가입하기' style="display:none;">
		<input type="button" name ="modify" value='수정하기' >
		<input type="button" name ="signout" value='탈퇴하기' >
	</div>
