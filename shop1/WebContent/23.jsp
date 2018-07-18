<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>




<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
현재 날짜와 시간은 <%= nowTime %> 입니다.
<br>-------------------------------------------------------------------<br>
현재 날짜와 시간은 <%= sf.format(nowTime) %> 입니다.
[출처] [JSP]현재 날짜와 시간 출력|작성자 Realsung


<jsp:include page = "index.html"/>
</body>
</html>