<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="shop.*, java.util.Date" %>
<!DOCTYPE html >  
<html>
<head>
<meta  charset="EUC-KR">
<title>구매 처리</title>
</head>
<body>
<%
		String user = request.getParameter("user");
		String isbn[] = request.getParameterValues("isbn");
		String quantity[] = request.getParameterValues("quantity");
		String menu = request.getParameter("menu");
	   
		ShopMgr sMgr = new ShopMgr();
		
		boolean success = sMgr.insertOrderinfo( user, isbn, quantity);  //누가 , 무엇을 , 얼마만큼   
		//		 ㄴ shopMgr 에서 받은 return 값 
				
		if(success){
			if(menu != null && menu.equals("fromCart")){		//만약에 장바구니에 들어간것이면
				sMgr.deleteCart(user, isbn);    				//장바구니 지워주기
			}
%>	  
			<script>
				alert("결재가 성공적으로 처리되었습니다.");				//oderinfo 테이블안에 정보가 들어감
				location.href="myInfo.jsp?user=<%=user%>"; 
			</script>
<%
		}else{
%>		
			<script>
				alert("결재 실패! 다시 결재해 주세요");
				history.go(-1);									//이전 화면
			</script>
<%
		}
%>
</body>
</html>