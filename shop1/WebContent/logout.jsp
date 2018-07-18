<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	session.invalidate();
 // 정보 삭제
 
 //	session.setAttribute("id","");
 // 정보를 빈값으로 채움
 
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