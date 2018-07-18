<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<%@page import="shop.BookBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="sMgr" class="shop.ShopMgr" />
<%	
	  request.setCharacterEncoding("EUC-KR");

	  String category = "PL";
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=8; // 페이지당 레코드 수 
	  int pagePerBlock=10;  //블럭당 페이지수 
	  
	  int totalPage=0; //전체 페이지 수
	  int totalBlock=0;  //전체 블럭수 

	  int nowPage=1; // 현재페이지
	  int nowBlock=1;  //현재블럭
	  
	  int start=0; //디비의 select 시작번호
	  
	  int listSize=0; //현재 읽어온 게시물의 수

		String keyWord = "", keyField = "";
		Vector<BookBean> vlist = null;
		
		if (request.getParameter("keyWord") != null) {
			keyWord = request.getParameter("keyWord");
			keyField = request.getParameter("keyField");
		}
		
		if (request.getParameter("reload") != null){
			if(request.getParameter("reload").equals("true")) {
				keyWord = "";
				keyField = "";
			}
		}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start=(nowPage * numPerPage)-numPerPage;
	 
	totalRecord = sMgr.getTotalCount(category, keyField, keyWord);       
	totalPage =(int)Math.ceil((double)totalRecord / numPerPage);  //전체페이지수
	nowBlock= (int)Math.ceil((double)nowPage/pagePerBlock); //현재블럭 계산
	  
	totalBlock =(int)Math.ceil((double)totalPage / pagePerBlock);  //전체블럭계산
%>


<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!--host 방식 -->

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li 점 없애기 -->


<script>
	function list() {
		document.listFrm.action = "pl.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="bookInfo.jsp";
		document.readFrm.submit();
	}
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
		   alert("검색어를 입력하세요.");
		   document.searchFrm.keyWord.focus();
		   return;
	     }
	  document.searchFrm.submit();
	 }
</script>
</head>
<body>






<!-- Always shows a header, even in smaller screens. -->
<!-- main 노란줄 -> MDL 에서 제공해주는 태그 -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  
  <!-- 지시자 include : 소스코드 자체를 합쳐주는  -->

    
  <main class="mdl-layout__content">
    <div class="page-content">		<!-- Your content goes here -->
    	<div class="mdl-grid">
			<!-- mdl cell인데 mdl cell n개를 차지하는 눈금을 제공한다. 
									12개 이니 4분할시 3개씩 컬럼을 할당한다.-->
		  <div class="mdl-cell mdl-cell--12-col" align=center>
		  	<h4>Programing language</h4>
		  	Total: <%=totalRecord %>개
		  
		  
		  
		  </div>
		  
		  <%
		  	vlist = sMgr.getBookList(category, keyField, keyWord, start, numPerPage);
		  	listSize = vlist.size();// 브라우저 화면에 보여질 게시물 갯수
		  	if(vlist.isEmpty()){
		  		out.println("등록된 게시물이 없습니다.");
		  	}else{
		  %>
		  <%
		  	int columNo = 4;
		  	String IMGPATH = "img/book/";
		  	
		  	for(int i = 0; i <vlist.size(); i++){
		  	  	
		  %>
		  	<tr>
		  <%
		  			int j = 0 ;
		  			for(j=0; j <columNo; j ++){
		  			
		  				if(i+j >= vlist.size()) break;
		  				BookBean book = vlist.get(i + j);
		  
		  %>
		  
		  	<div class = "mdl-cell mdl-cell--3-col" align = center>
		  		<ul>
		  				<!-- primary key를 넘겨줌 -> ?isbn-->
		  			<li><a href = "bookInfo.jsp?isbn=<%=book.getIsbn() %>">
		  				<img src=<%=IMGPATH + book.getImg() %> height = 220 width = 200>
		  				</a> </li>
		  			<li><a href = "bookInfo.jsp?isbn=<%=book.getIsbn() %>">
		  				<%=book.getTitle() %></a></li>
		  			<li><%=book.getAuthor() %></li>
		  			<li><%=book.getPublisher() %> </li>
		  			<li><%=book.getPrice() %>  원 </li>
		  		</ul>
		  	</div>
	
		  <% 
		  	} // for
		  	i = i + j -1 ;
		   } // for
		  } //if 
		  
		  %>
		  
		  <div class = "mdl-cell mdl-cell--12-col" align = center>
		  	<br><br>
		  	<!--  페이징 및 블럭 처리 -->
		  	
					<%
		   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //하단 페이지 시작번호
		   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ? 
		   						        (pageStart + pagePerBlock -1): totalPage; 
		   				  //하단 페이지 끝번호
		   				 
		   				  if(totalPage !=0){
		    			  	if (nowBlock > 1) {%>
		    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
		   			  		<%for ( ; pageStart <= pageEnd; pageStart++){%>
		     			     	<a href="javascript:pageing('<%=pageStart %>')"> 
		     					<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
		     					[<%=pageStart %>] 
		     					<%if(pageStart==nowPage) {%></font> <%}%></a> 
		    					<%}//for%>&nbsp; 
		    					<%if (totalBlock > nowBlock ) {%>
		    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
		    					<%}%>&nbsp;  
		  				   <%}%>
		 				<!-- 페이징 및 블럭 처리 End-->
		  	</div>
		<div class = "mdl-cell mdl-cell--12-col" align = center>
		
		
		<!-- 서치부분서치부분서치부분서치부분서치부분서치부분서치부분서치부분서치부분서치부분서치부분 -->
		
		 	<form  name="searchFrm"  method="get" action="pl.jsp">
				<select name="keyField" size = 1 style = "height:32px">
					<option value = "title">제목 </option>
					<option value = "author">저자 </option>
					<option value = "publisher">출판사</option>
				</select>
				
				<div class="mdl-textfield mdl-js-textfield">
    				<input class="mdl-textfield__input" type="text" id="sample1" name = "keyWord">
    				<label class="mdl-textfield__label" for="sample1">검색어...</label>
  				</div>
  				
  				<!-- 한글검색이 안된다 -> 넣으면 점수  (java의 인코딩 변경해줘야함)-->
  				<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent"
  						onclick="javascript:check()">
  					Seach
				</button>



			</form>
			<form name="listFrm" method="post">
				<input type="hidden" name="reload" value="true"> 
				<input type="hidden" name="nowPage" value="1">
			</form>
			<form name="readFrm" method="get">
				<input type="hidden" name="isbn"> 
				<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
				<input type="hidden" name="keyField" value="<%=keyField%>"> 
				<input type="hidden" name="keyWord" value="<%=keyWord%>">
			</form>
		
		
		
		
		</div>
    	</div>
    </div>
    
  </main>
  
   <!-- /main 밑에 footer 자리 -->
 
    

</body>
</html>