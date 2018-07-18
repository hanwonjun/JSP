<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="ch08.MemberBean" scope="page"/>
<jsp:setProperty name="regBean" property="*"	/>

<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR>
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<form method = post action = "insertMember.jsp">
<input type = hidden name = id value = <%= regBean.getId() %> >
<input type = hidden name = passwd value = <%= regBean.getPasswd() %> >
<input type = hidden name = name value = <%= regBean.getName() %> >
<input type = hidden name = sex value = <%= regBean.getSex() %> >
<input type = hidden name = email value = <%= regBean.getEmail() %> >
<input type = hidden name = zipcode value = <%= regBean.getZipcode() %> >
<input type = hidden name = address value = <%= regBean.getAddress() %> >
<input type = hidden name = birthday value = <%= regBean.getBirthday() %> >
<input type = hidden name = hobby value = <%= regBean.getHobby() %> >
<input type = hidden name = job value = <%= regBean.getJob() %> >


<table width="1000" cellpadding="5" bgcolor="#cccccc">
	<tr>
		<td colspan="2" align="center"><font color="ffffff"><b><h1><%= regBean.getId() %></h1>
	회원님이 작성하신 내용입니다. 확인해 주세요</b></font></td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>아이디</td>
		<td width = "30%" bgcolor="#ffffff">
			<%= regBean.getId() %>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>비밀번호</td>
		<td width = "30%" bgcolor="#ffffff">
			<%= regBean.getPasswd() %>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>비밀번호 확인</td>
		<td width = "30%" bgcolor="#ffffff">
			<%= regBean.getPasswd() %>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>이름</td>
		<td width = "30%" bgcolor="#ffffff">
			<%= regBean.getName() %>
		</td>
	</tr>

<%-- 	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">전화번호</td>
		<td width = "30%" bgcolor="#ffffff">
			<%= regBean.getPhone() %>
		</td>
	</tr> --%>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">이메일</td>
		<td width = "30%" bgcolor="#ffffff">
			
			<%= regBean.getEmail() %>
			
			
		</td>
	</tr>
	
	<tr>
		<td colspan = "3" align = "center" >
		<input type = "submit" value = "확인완료" bgcolor = "#f4f4f4">
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		
		<input type="button" value="다시쓰기" onClick="history.back()">
		 
		</td>
	</tr>
</table>
</form>
</body>
</html>