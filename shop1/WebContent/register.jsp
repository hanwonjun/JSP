<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<link href = "style.css" rel = "stylesheet" type = "text/css">
<script>
	function inputCheck() {
		if(document.regForm.passwd.value != document.regForm.repasswd.value) {
			document.regForm.repasswd.focus();
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
	}
</script>
</head>
<body>
※아래는 Edge Gym의 원활한 운영을 위한 필요한 질문입니다. 정성껏 작성해 주세요.<p><p><p>




<form name ="regForm" onsubmit = "return inputCheck()" method = "post" action = "registerProc.jsp">
	질문 1  :Edge Gym 규칙을 반드시 숙지해주시길 바랍니다. 확인하지 않아서 발생한 불이익은 책임지지 않습니다.<br>
		<input type="checkbox" value="네" name="yes" required>&nbsp;네
		 <p>
	질문 2  :	상호 간의 경어체(존댓말) 사용과 통신예절 준수를 의무화합니다. 지키지 않을 경우 징계처리됩니다.<br>
		<input type="checkbox" value="네" name="yes" required>&nbsp;네
		 <p>
	질문 3  :	작성 불량 및 광고/홍보 활동하시면 강퇴조치에 동의하시겠습니까? 미동의시 탈퇴처리됩니다.<br>
		<input type="checkbox" value="네" name="yes" required>&nbsp;네
		 <p>
	질문 4  : 불만사항과 문의사항이 있을시  han01028761623@icloud.com 메일을 보내주시기 바랍니다.<br>
		<input type="checkbox" value="네" name="yes" >&nbsp;네
		<p><br><br>
	
	※가입 신청이 수락되면 '기입하신 이메일'로 알려드립니다.<p>
	·가입 신청 후 3개월 이상 수락되지 않으면 자동 신청 해제 됩니다.<p>
	·동의시 원활한 Edge Gym 운영을 위해 매니저와 트레이너에게 아이디, 이름, 이메일,  활동내역이 Edge Gym 이용기간 동안 공개됩니다.<p>
 
		
	
<table width="1000" cellpadding="5" bgcolor="#cccccc">
	<tr>
		<td colspan="2" align="center"><font color="ffffff" ><b>회원가입</b></font></td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>아이디</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "id" size = "15" required>
			<font color="#ff9900" size="2">(4~12자 영문자/숫자 가능)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>비밀번호</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "password" name = "passwd" size = "15" required>
			<font color="#ff9900" size="2">(15자 이내로 입력해주세요.)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>비밀번호 확인</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "password" name = "repasswd"  size = "15" required>
			<font color="#ff9900" size="2">(비밀번호 재입력.)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>이름</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "name"   size = "15" required>
			<font color="#ff9900" size="2">(반드시 입력해주세요.)</font>
		</td>
	</tr>

	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>성별</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type="checkbox" value="m" name="sex" >&nbsp;남
			<input type="checkbox" value="w" name="sex" >&nbsp;여
			
		</td>
	</tr>
	
	

	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>전화번호</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "phone1"   size = "10">

			
		</td>
	</tr>
	
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">직업</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "job"   size = "10">			
		</td>
	</tr>


	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">주소</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "zipcode"   size = "30">
						
		</td>
	</tr>
	

	
	
	
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">이메일</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "email"   size = "30" >
			<font color="#ff9900" size="2"><p>되도록 naver,hanmail로 써주세요.</font>
		</td>
	</tr>
	
	<tr>
		<td colspan = "3" align = "center" >
		<input type = "submit" value = "회원가입" bgcolor = "#f4f4f4">
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<input type = "reset" value = "다시쓰기">
		</td>
	</tr>
</table>

</form>
</body>
</html>