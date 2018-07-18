<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<%@page import="shop.BookBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="sMgr" class="shop.ShopMgr" />
<%	
	  request.setCharacterEncoding("EUC-KR");

	  String category = "PL";
	  
      int totalRecord=0; //��ü���ڵ��
	  int numPerPage=8; // �������� ���ڵ� �� 
	  int pagePerBlock=10;  //���� �������� 
	  
	  int totalPage=0; //��ü ������ ��
	  int totalBlock=0;  //��ü ���� 

	  int nowPage=1; // ����������
	  int nowBlock=1;  //�����
	  
	  int start=0; //����� select ���۹�ȣ
	  
	  int listSize=0; //���� �о�� �Խù��� ��

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
	totalPage =(int)Math.ceil((double)totalRecord / numPerPage);  //��ü��������
	nowBlock= (int)Math.ceil((double)nowPage/pagePerBlock); //����� ���
	  
	totalBlock =(int)Math.ceil((double)totalPage / pagePerBlock);  //��ü�����
%>


<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!--host ��� -->

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li �� ���ֱ� -->


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
		   alert("�˻�� �Է��ϼ���.");
		   document.searchFrm.keyWord.focus();
		   return;
	     }
	  document.searchFrm.submit();
	 }
</script>
</head>
<body>






<!-- Always shows a header, even in smaller screens. -->
<!-- main ����� -> MDL ���� �������ִ� �±� -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  
  <!-- ������ include : �ҽ��ڵ� ��ü�� �����ִ�  -->

    
  <main class="mdl-layout__content">
    <div class="page-content">		<!-- Your content goes here -->
    	<div class="mdl-grid">
			<!-- mdl cell�ε� mdl cell n���� �����ϴ� ������ �����Ѵ�. 
									12�� �̴� 4���ҽ� 3���� �÷��� �Ҵ��Ѵ�.-->
		  <div class="mdl-cell mdl-cell--12-col" align=center>
		  	<h4>Programing language</h4>
		  	Total: <%=totalRecord %>��
		  
		  
		  
		  </div>
		  
		  <%
		  	vlist = sMgr.getBookList(category, keyField, keyWord, start, numPerPage);
		  	listSize = vlist.size();// ������ ȭ�鿡 ������ �Խù� ����
		  	if(vlist.isEmpty()){
		  		out.println("��ϵ� �Խù��� �����ϴ�.");
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
		  				<!-- primary key�� �Ѱ��� -> ?isbn-->
		  			<li><a href = "bookInfo.jsp?isbn=<%=book.getIsbn() %>">
		  				<img src=<%=IMGPATH + book.getImg() %> height = 220 width = 200>
		  				</a> </li>
		  			<li><a href = "bookInfo.jsp?isbn=<%=book.getIsbn() %>">
		  				<%=book.getTitle() %></a></li>
		  			<li><%=book.getAuthor() %></li>
		  			<li><%=book.getPublisher() %> </li>
		  			<li><%=book.getPrice() %>  �� </li>
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
		  	<!--  ����¡ �� �� ó�� -->
		  	
					<%
		   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //�ϴ� ������ ���۹�ȣ
		   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ? 
		   						        (pageStart + pagePerBlock -1): totalPage; 
		   				  //�ϴ� ������ ����ȣ
		   				 
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
		 				<!-- ����¡ �� �� ó�� End-->
		  	</div>
		<div class = "mdl-cell mdl-cell--12-col" align = center>
		
		
		<!-- ��ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κм�ġ�κ� -->
		
		 	<form  name="searchFrm"  method="get" action="pl.jsp">
				<select name="keyField" size = 1 style = "height:32px">
					<option value = "title">���� </option>
					<option value = "author">���� </option>
					<option value = "publisher">���ǻ�</option>
				</select>
				
				<div class="mdl-textfield mdl-js-textfield">
    				<input class="mdl-textfield__input" type="text" id="sample1" name = "keyWord">
    				<label class="mdl-textfield__label" for="sample1">�˻���...</label>
  				</div>
  				
  				<!-- �ѱ۰˻��� �ȵȴ� -> ������ ����  (java�� ���ڵ� �����������)-->
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
  
   <!-- /main �ؿ� footer �ڸ� -->
 
    

</body>
</html>