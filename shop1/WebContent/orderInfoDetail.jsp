<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="shop.*,ch13.*,java.util.Vector" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-amber.min.css" />
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<link rel="stylesheet" href="style.css" />

<title>상세 주문내역</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	ShopMgr sMgr = new ShopMgr();  
	
	Vector <OrderBookBean> list = sMgr.getOrderDList(num);  
%> 

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
	
	
	<main class="mdl-layout__content">
		<div class="page-content">
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center >
					<table class = "mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
						<br>
						<caption>상세 주문 내역</caption>
						<thead>
							<tr>
								<th class = "mdl-data-table__cell--non-numeric">주문일자</th>
								<th class = "mdl-data-table__cell--non-numeric">주문번호</th>
								<th class = "mdl-data-table__cell--non-numeric">주문내역</th>
								<th class = "mdl-data-table__cell--non-numeric">금액</th>
								<th class = "mdl-data-table__cell--non-numeric">수량</th>
								<th class = "mdl-data-table__cell--non-numeric">합계</th>
							</tr>
						</thead>
						<tbody>
							<%	
								int sum = 0;
								for(OrderBookBean bean : list){
									sum += bean.getTotal();
							%>
									<tr>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getBuydate()%></td>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getNum()%></td>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getTitle()%></td>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getPrice() %>원</td>
										<td class = "mdl-data-table__cell--non-numeric"><%=bean.getQuantity()%></td>
										<td class = "mdl-data-table__cell--non-numeric" align=right><%=bean.getTotal() %>원</td>
									</tr>
							<%
								}
							%>
							<tr>
								<td align="left">총 계</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><%=sum%>원</td>
							</tr>
						</tbody>
						
					</table>
				</div>
			</div>
		</div>
	</main>
	
</div>
</body>
</html>