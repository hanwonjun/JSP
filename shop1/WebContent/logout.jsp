<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	session.invalidate();
 // ���� ����
 
 //	session.setAttribute("id","");
 // ������ ������ ä��
 
 %>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%response.sendRedirect("index.jsp"); %>
</body>
</html>