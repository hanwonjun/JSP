<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ch08.*" %>

<!DOCTYPE html>   
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%-- <jsp:include page = "top.jsp"/> --%>
<div align=center>
<h3>�α���</h3> 
<form method=post action=loginProc.jsp>
<table>
<tr>
	<td>�� �� ��:</td>
	<td><input type=text name=id size=15 maxlength=20 required></td>
</tr>
<tr>
	<td>��й�ȣ:</td>
	<td> <input type=password name=passwd size=15 maxlength=20 required></td>
</tr>

</tr>
<tr>
	<td colspan=2 align="center">	
		<input type=submit value="Ȯ��">
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<input type=reset value="�ٽþ���" >
	</td>
</tr>
</table>
</form> 
</div>
</body>
</html>