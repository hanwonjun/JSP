<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "shop.*" %>
<%
	String isbn = request.getParameter("isbn");
	String user = request.getParameter("user");
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	
	ShopMgr sMgr = new ShopMgr();
	boolean success = sMgr.insertCart(user, isbn, quantity);
	
	//insert ������ bool -> 1������ 
	if(success){
%>
	<script>
		if(confirm("��ٱ��Ͽ� �߰��Ǿ����ϴ�.\n��ٱ��ϸ� Ȯ�� �Ͻðڽ��ϱ�?")){
			location.href ="myCart.jsp?user=<%=user%>";
		}else{
			history.go(-1);
		}
	
	</script>

<%
	}
%>