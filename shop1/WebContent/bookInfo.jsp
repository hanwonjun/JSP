<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<%@ page import="shop.*" %>


<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
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
<!--button의 액션기능 수행 -->
function callFunction(fileName) {

	document.bookInfoForm.action = fileName;
						// ㄴ 행동
	document.bookInfoForm.submit();
						// ㄴ 전송 
}

</script>

<title>IT 서적 쇼핑몰</title>

</head>

<body>   

<%

	String uid = "ehkim";

	String IMGPATH = "img/book/";

	String isbn = request.getParameter("isbn");

	

	ShopMgr sMgr = new ShopMgr();

	BookBean book = sMgr.getBook(isbn);

		

 

		

%>

 

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">



	

	<main class="mdl-layout__content">

		<div class="page-content">

			<div class="mdl-grid">

			    <div class="mdl-cell mdl-cell--1-col mdl-layout--large-screen-only" ></div>

				<div class="mdl-cell mdl-cell--4-col"  align=center>

					<img src='<%=IMGPATH + book.getImg() %>'>

					<br><br>

					<div align="justify" style="width:80%;align:center"><h4><%=book.getDescription() %></h1></div>	

					</div>

				<div class="mdl-cell mdl-cell--2-col mdl-layout--large-screen-only" ></div>

				<div class="mdl-cell mdl-cell--4-col" align=center>

					<form name="bookInfoForm" method=post>

						<input type=hidden name=isbn value=<%=book.getIsbn() %>> <!-- isbn의 정보가 넘어감 -->

						<input type=hidden name=user value="ehkim">				 <!-- user의 정보가 넘어감 -->

						<input type=hidden name=quantity value="1"> <!-- 수량 입력창 만들기  --> <!-- 수량의 정보가 넘어감 -->

							<table id = bookInfoTable>

								<tr><th width=100>Training event</th><td><%=book.getTitle() %></td></tr>

								<tr><th>Trainers</th><td><%=book.getAuthor() %></td></tr>

								<tr><th>Place</th><td><%=book.getPublisher() %></td></tr>

								<tr><th>Start Date</th><td><%= sf.format(nowTime) %></td></tr>

								<tr><th>Price</th><td><%=book.getPrice() %> 원</td></tr>

								<tr><th>Number of months to reserve</th><td>									<div class="quantity">
										<input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4"/>
									</div>	</td></tr>

							</table>

				<br><br>

				<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"

							onclick="callFunction('payment.jsp')" type = "button">

					바로구매

				</button>

				&nbsp;&nbsp;&nbsp;&nbsp;

				<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"

							onclick="callFunction('addCart.jsp')" type = "button">

					장바구니

				</button>

				

					</form>

				</div>

				<div class="mdl-cell mdl-cell--1-col mdl-layout--large-screen-only" ></div>

			</div>

		</div>

	</main>



</div>

</body>

</html>