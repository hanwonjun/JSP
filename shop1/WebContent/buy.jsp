<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="shop.*, java.util.Date" %>
<!DOCTYPE html >  
<html>
<head>
<meta  charset="EUC-KR">
<title>���� ó��</title>
</head>
<body>
<%
		String user = request.getParameter("user");
		String isbn[] = request.getParameterValues("isbn");
		String quantity[] = request.getParameterValues("quantity");
		String menu = request.getParameter("menu");
	   
		ShopMgr sMgr = new ShopMgr();
		
		boolean success = sMgr.insertOrderinfo( user, isbn, quantity);  //���� , ������ , �󸶸�ŭ   
		//		 �� shopMgr ���� ���� return �� 
				
		if(success){
			if(menu != null && menu.equals("fromCart")){		//���࿡ ��ٱ��Ͽ� �����̸�
				sMgr.deleteCart(user, isbn);    				//��ٱ��� �����ֱ�
			}
%>	  
			<script>
				alert("���簡 ���������� ó���Ǿ����ϴ�.");				//oderinfo ���̺�ȿ� ������ ��
				location.href="myInfo.jsp?user=<%=user%>"; 
			</script>
<%
		}else{
%>		
			<script>
				alert("���� ����! �ٽ� ������ �ּ���");
				history.go(-1);									//���� ȭ��
			</script>
<%
		}
%>
</body>
</html>