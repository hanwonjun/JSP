<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="shop.*,ch13.*" %>
<!-- 여기서는 checkbox 없애도됨 -->
<%
	String user = request.getParameter("user");
	String isbn[] = request.getParameterValues("isbn");
								// ㄴ 배열이라서 Values
	String quantity[] = request.getParameterValues("quantity");
	String menu = request.getParameter("menu");
	
	MemberMgr mgr = new MemberMgr();
	MemberBean member = mgr.getMember(user);
	
	int total = 0;

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
						<caption>책 구매 정보</caption>
						<thead>
							<tr>
								<th class = "mdl-data-table__cell--non-numeric">제목</th>
								<th class = "mdl-data-table__cell--non-numeric">수량</th>
								<th class = "mdl-data-table__cell--non-numeric">가격</th>
							</tr>
						</thead>
						<tbody>
<%-- 							<%	ShopMgr smgr = new ShopMgr();
								for(int i = 0 ; i<isbn.length ; i++){
									BookBean book = smgr.getBook(isbn[i]);
									int sum = book.getPrice() * Integer.parseInt(quantity[i]);
									total += sum;
							
							 --%>
							    <% ShopMgr smgr = new ShopMgr();
                  				for(int i=0; i<isbn.length; i++){
                     				BookBean book = smgr.getBook(isbn[i]);
                     				int sum = book.getPrice()*Integer.parseInt(quantity[i]);
                     				total += sum;
							%>
									<tr>
										<td class = "mdl-data-table__cell--non-numeric"><%=book.getTitle() %></td>
										<td><%=quantity[i] %> </td>
										<td><%=sum %> </td>
									</tr>
							<%
								}
							%>
						</tbody>
					
						<tfoot>
							<tr>
								<th class = "mdl-data-table__cell--non-numeric">총계</th>
								<th colspan = 2 > <%=total %></th>
							</tr>
						</tfoot>
				</table>
				

				</div>
				
				<div class="mdl-cell mdl-cell--12-col">
					<br>
				</div>
							
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center >
					<table class = "mdl-data-table mdl-js-data-table mdl-shadow--2dp">
						<caption>구매자 정보</caption>
							<thead>
								<tr>
									<th class = "mdl-data-table__cell--non-numeric">성명</th>
									<th class = "mdl-data-table__cell--non-numeric">주소</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class ="mdl-data-table__cell--non-numeric"><%=member.getName() %></td>
									<td><%=member.getAddress() %></td>
								</tr>
							</tbody>
					</table>

				</div>
				
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center >
					<form name="pay" method="post" >
						<input type=hidden name=user value=<%=member.getId() %>>
						<input type=hidden name=menu value=<%=menu %>>
				<%
					for(int i=0; i<isbn.length; i++ ){
				%>
						<input type=hidden name=isbn value=<%=isbn[i] %>>
						<input type=hidden name=quantity value=<%=quantity[i] %> >
				<%
					}
				%>		<br>
						<button class="mdl-button mdl-js-button mdl-button--raised mdl-button-accent"
								onclick = "javascript:payConfirm()" type = "button">
						
						결제하기
						
						</button>
						<br>
					</form>	
				</div>
						
			</div>
		</div>
	</main>

</div>
</body>
</html>