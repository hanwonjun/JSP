<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "shop.*" %>
<%
	String isbn = request.getParameter("isbn");
	String user = request.getParameter("user");
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	
	ShopMgr sMgr = new ShopMgr();
	boolean success = sMgr.insertCart(user, isbn, quantity);
	
	//insert 성공시 bool -> 1값으로 
	if(success){
%>
	<script>
		if(confirm("장바구니에 추가되었습니다.\n장바구니를 확인 하시겠습니까?")){
			location.href ="myCart.jsp?user=<%=user%>";
		}else{
			history.go(-1);
		}
	
	</script>

<%
	}
%>