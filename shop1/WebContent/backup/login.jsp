<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ch08.*" %>

<!DOCTYPE html>   
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%-- <jsp:include page = "top.jsp"/> --%>
<div align=center>
<h3>로그인</h3> 
<form method=post action=loginProc.jsp>
<table>
<tr>
	<td>아 이 디:</td>
	<td><input type=text name=id size=15 maxlength=20 required></td>
</tr>
<tr>
	<td>비밀번호:</td>
	<td> <input type=password name=passwd size=15 maxlength=20 required></td>
</tr>

</tr>
<tr>
	<td colspan=2 align="center">	
		<input type=submit value="확인">
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<input type=reset value="다시쓰기" >
	</td>
</tr>
</table>
</form> 
</div>
</body>
</html>