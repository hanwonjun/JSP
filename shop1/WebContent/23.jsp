<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd�� a hh:mm:ss");
%>




<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� ��¥�� �ð��� <%= nowTime %> �Դϴ�.
<br>-------------------------------------------------------------------<br>
���� ��¥�� �ð��� <%= sf.format(nowTime) %> �Դϴ�.
[��ó] [JSP]���� ��¥�� �ð� ���|�ۼ��� Realsung


<jsp:include page = "index.html"/>
</body>
</html>