<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form class="form-horizontal"
		style=" margin: 0 auto;  padding: 20px;  width : 60%;">
		<div class="form-group">
			<label for="inputid" class="control-label">�� �� ��</label> 
			<input	type="text" class="form-control" id="id" placeholder="">
		</div>

		<div class="form-group">
			<label for="inputPassword" class="control-label">��� ��ȣ</label> 
			<input	type="password" class="form-control" id="pw" placeholder="���� ���� ���� 6�ڸ� �̻�">
		</div>

		<div class="form-group">
			<label class="control-label">�̸�</label> 
			<input type="text" class="form-control" id="name" placeholder="User name">
		</div>

		<div class="form-group">
			<label class="control-label">�ּ�</label> 
			<input type="text"	class="form-control" id="address" placeholder="�ּ�">
		</div>

		<div class="form-group">
			<label>��ȭ ��ȣ</label> 
			<input type="tel" class="form-control" id="phoneNumber" placeholder="010-xxx-xxxx">
		</div>

		<div class="form-group" style="text-align: center;">
			<label for="" class="col-sm-2 control-label">Check</label>
			<fieldset style="border: solid 1px white;">
				<div>
					<label> <input type="checkbox" name='Alergy' value='' /> ���
						<input type="checkbox" name='Alergy' value='' /> ���� <input
						type="checkbox" name='Alergy' value='' /> ���� <input
						type="checkbox" name='Alergy' value='' /> ��
					</label>
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' /> ����
						<input type="checkbox" name='Alergy' value='' /> ��ġ <input
						type="checkbox" name='Alergy' value='' /> ���� <input
						type="checkbox" name='Alergy' value='' /> ��
					</label>	
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' />
						�Ұ�� <input type="checkbox" name='Alergy' value='' /> �߰�� <input
						type="checkbox" name='Alergy' value='' /> �������
					</label>
				</div>
				<div>
					<label> <input type="checkbox" name='Alergy' value='' />
						������ <input type="checkbox" name='Alergy' value='' /> �ε鷹 <input
						type="checkbox" name='Alergy' value='' /> �������
					</label>
				</div>
			</fieldset>
		</div>
	</form>
	<div style="text-align:center; margin-bottom:15px;">
		<input type="button" name ="signup" value='�����ϱ�' style="display:none;">
		<input type="button" name ="modify" value='�����ϱ�' >
		<input type="button" name ="signout" value='Ż���ϱ�' >
	</div>
