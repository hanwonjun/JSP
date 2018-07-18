<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="shop.*,ch13.*,java.util.Vector" %>
<%
	String user = request.getParameter("user");

	ShopMgr sMgr = new ShopMgr();
	
	Vector <OrderBookBean> list = sMgr.getOrderList(user);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-amber.min.css" />
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

<link rel="stylesheet" href="style.css" />
<script>

function payConfirm(){
	if (confirm("결재를 진행 하시겠습니까?") == true){    //확인
		document.pay.action = "buy.jsp";
	    document.pay.submit();
	}else{   //취소
	    return;
	}
}

</script>
<title>IT 서적 쇼핑몰</title>
</head>
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

	
	<main class="mdl-layout__content">
		<div class="page-content">
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center >
					<table class = "mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
						<br>
						<caption>최근 주문 내역</caption>
						<thead>
							<tr>
								<th class = "mdl-data-table__cell--non-numeric">주문일자</th>
								<th class = "mdl-data-table__cell--non-numeric">주문번호</th>
								<th class = "mdl-data-table__cell--non-numeric">주문내역</th>
								<th class = "mdl-data-table__cell--non-numeric">금액</th>
							</tr>
						</thead>
						<tbody>
							<%	
								for(OrderBookBean bean : list){
							
							%>
									<tr>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getBuydate()%></td>
										<td class = "mdl-data-table__cell--non-numeric">
										<a class="mdl-navigation__link" href="orderInfoDetail.jsp?num=<%=bean.getNum()%>"><%=bean.getNum()%></a></td>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getTitle()%>
									
							<%
									if(bean.getCnt() > 1)
										out.println(" 외" + (bean.getCnt() - 1) + "종");
								
							%>		</td>
									<td><%=bean.getTotal() %>원 </td>
								</tr>
							<%
								}
							%>
						</tbody>
						
					</table>
				</div>
			</div>
		</div>
	</main>

</div>
</body>
</html>