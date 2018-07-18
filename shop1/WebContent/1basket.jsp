<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ page import="ch08.*"%> 
<%
String id = (String) session.getAttribute("id");
String pass = (String) session.getAttribute("pass");
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- ?user=ehkim -->

<script>
   
   location.href = "http://localhost:8080/shop1/myCart.jsp?user=ehkim";
   
</script>
</body>
</html>