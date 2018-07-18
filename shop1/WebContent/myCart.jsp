<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="shop.*,ch13.*,java.util.Vector" %>
<%

	String user = request.getParameter("user");
	ShopMgr sMgr = new ShopMgr();
	
	Vector<BookCartBean> list = sMgr.getCart(user);
%>
<!DOCTYPE html >
<html>
<head>

<script>

function submitCheck() {
	   var rows=document.getElementsByClassName("is-selected");
	   
	   for(var i=0;i<rows.length;i++){
	      var isbn=rows[i].id;
	      var quantity=rows[i].children[3].innerHTML;
	      var input=document.createElement("input");
	      input.setAttribute("type","hidden");
	      input.setAttribute("name","isbn");
	      input.setAttribute("value",isbn);
	      document.cartFrm.appendChild(input);   
	      
	      input=document.createElement("input");
	      input.setAttribute("type","hidden");
	      input.setAttribute("name","quantity");
	      input.setAttribute("value",quantity);
	      document.cartFrm.appendChild(input);
	      
	   }
	   document.cartFrm.submit();
	   
	}
/* function submitCheck(){
	var rows = document.getElementsByClassName("is-selected");
	//											�� �̰��� ��� �� ã���ִ� ���
	
	for(var i = 0; i<rows.length; i++){
		var isbn =  rows[i].id;
		var quantity = rows[i].children[3].innerHTML;
		//						 td 3��°�� -> ����
		
		var input = document.createElement("input");
		input.setAttribute("type","hidden");
		input.setAttribute("name","isbn");
		input.setAttribute("value",isbn);
		document.cartFrm.appendChild(input);
		//cartFrm�� �ڽ��±��� input�� �ִ´�(�Ŵܴ�)
		
		input = document.createElement("input");
		input.setAttribute("type","hidden");
		input.setAttribute("name","quantity");
		input.setAttribute("value",quantity);
		document.cartFrm.appendChild(input);
		
	}
	
	document.cartFrm.submit();
} */

</script>

<meta charset="EUC-KR">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.3.0/material.deep_purple-amber.min.css" />
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

<title>IT ���� ���θ�</title>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

		<main class="mdl-layout__content">
		<div class="page-content">
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center>
					<table
						class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
						<caption>���� ��ٱ���</caption>			<!-- mdl-data-table--select : checkbox -->
						<thead>
							<tr>
								<th class="mdl-data-table__cell--non-numeric">Training event</th>
								<th class="mdl-data-table__cell--non-numeric">Price</th>
								<th class="mdl-data-table__cell--non-numeric">Number of months to reserve</th>
								<th>Total Price </th>
							</tr>
						</thead>
						<tbody>
						   <%
						   		for(BookCartBean bean : list) {
						   %>
							<tr class = "is-selected" id="<%=bean.getIsbn()%>">
								<!-- class = "is-selected" -> üũ�ڽ� ��� üũ�Ǿ ���� -->
								<td class="mdl-data-table__cell--non-numeric"><%=bean.getTitle() %></td>
								<td class="mdl-data-table__cell--non-numeric"><%=bean.getPrice() %></td>
								<td class="mdl-data-table__cell--non-numeric"><%=bean.getQuantity() %></td>
								<!-- 3��° td�� ������ �������ִ� -->
								<td><%=bean.getSum()%>��</td>
							</tr>	
							<%
						   		}
							%>
						</tbody>
					</table>
				</div>
				<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone" align=center>
					<form name=cartFrm method=post action="payment.jsp">
						<input type=hidden name=user value=<%=user %>>
						<input type=hidden name=menu value=formCart>
						

					<br>
					<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" 
							onclick="submitCheck()"  type=button>
							<!-- �� check�� �Ȱ͸� ������ -->
					�����ϱ�
					</button>
					<br>
					</form>
			</div>
			
		</div>
		</main>

	</div>
</body>
</html>