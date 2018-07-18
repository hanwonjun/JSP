<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<%@page import="ch14.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="ch14.BoardMgr" />
<%	
	request.setCharacterEncoding("EUC-KR");
	  
    int totalRecord=0; //전체레코드수
    int numPerPage=10;
    int pagePerBlock=15;
   	int totalPage=0;
   	int totalBlock=0;
   	
    int nowPage=1;
    int nowBlock=1;
    
    int start =0;
    
    int listSize=0;
      
	String keyWord = "", keyField = "";
    
	Vector<BoardBean> vlist = null;
	
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
	if (request.getParameter("nowPage") != null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		
	}
			start=(nowPage-1)*numPerPage;
	
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
	
%>
<title>JSPBoard</title>

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li 점 없애기 -->


<script>
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page){
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		document.readFrm.submit();
	}
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="read.jsp";
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
<div align="center">

	<h2>Edge Gym Board</h2>
  
	
	



<!-- <table class="mdl-data-table mdl-js-data-table">
  <thead>
    <tr>
      <th class="mdl-data-table__cell--non-numeric">Name</th>
      <th class="mdl-data-table__cell--non-numeric">Nickname</th>
      <th>Age</th>
      <th class="mdl-data-table__cell--non-numeric">Living?</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="mdl-data-table__cell--non-numeric">John Lennon</td>
      <td class="mdl-data-table__cell--non-numeric">The smart one</td>
      <td>40</td>
      <td class="mdl-data-table__cell--non-numeric">No</td>
    </tr>
    <tr>
      <td class="mdl-data-table__cell--non-numeric">Paul McCartney</td>
      <td class="mdl-data-table__cell--non-numeric">The cute one</td>
      <td>73</td>
      <td class="mdl-data-table__cell--non-numeric">Yes</td>
    </tr>
    <tr>
      <td class="mdl-data-table__cell--non-numeric">George Harrison</td>
      <td class="mdl-data-table__cell--non-numeric">The shy one</td>
      <td>58</td>
      <td class="mdl-data-table__cell--non-numeric">No</td>
    </tr>
    <tr>
      <td class="mdl-data-table__cell--non-numeric">Ringo Starr</td>
      <td class="mdl-data-table__cell--non-numeric">The funny one</td>
      <td>74</td>
      <td class="mdl-data-table__cell--non-numeric">Yes</td>
    </tr>
  </tbody>
</table> -->



	
	
	
	
	
	<table  align="center" border="0" width="80%">
			<tr>
				<td>Showing 1 to 10 marks results <%=totalRecord%> Articles <font color ="red">
				<%=nowPage %>/<%=totalPage%>Pages</font></td>
			</tr>
	</table>
	<table  align="center" width="80%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center" colspan="2">
			<%    
				  vlist = bMgr.getBoardList(keyField, keyWord,start,numPerPage);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				  <table class="mdl-data-table mdl-js-data-table" border="0" width="100%" cellpadding="0" cellspacing="0">
				  <thead>
					<tr align="center" bgcolor="#D0D0D0" height="120%">
						<th class="mdl-data-table__cell--non-numeric">번 호</th>
						<th class="mdl-data-table__cell--non-numeric">제 목</th>
						<th class="mdl-data-table__cell--non-numeric">이 름</th>
						<th class="mdl-data-table__cell--non-numeric">날 짜</th>
						<th class="mdl-data-table__cell--non-numeric">조회수</th>
					</tr>
					</thead>
					<%
						  for (int i = 0;i<numPerPage; i++) {
							if(i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String name = bean.getName();
							String subject = bean.getSubject();
							String regdate = bean.getRegdate();
							int depth = bean.getDepth();
							int count = bean.getCount();
					%>
					<tr>
						<td class="mdl-data-table__cell--non-numeric" align="center">
							<%=totalRecord - start -i%>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						<% 
						if(depth>0){
							for(int j=0; j<depth; j++){
								out.println("&nbsp;&nbsp;");
							}
						}
						%>
						
						  <a href="javascript:read('<%=num%>')"><%=subject%></a>
						</td>
						<td class="mdl-data-table__cell--non-numeric" align="center"><%=name%></td>
						<td class="mdl-data-table__cell--non-numeric" align="center"><%=regdate%></td>
						<td class="mdl-data-table__cell--non-numeric" align="center"><%=count%></td>
						</tr>
					<%}//for%>
				</table> <%
 			}//if
 		%>
			</td>
		</tr>

		<tr>
			<td>
			<!--  페이징 및 블럭처리 -->
		<%
	int pageStart = (nowBlock -1)*pagePerBlock +1;//하단페이지 시작번호
	int pageEnd = ((pageStart + pagePerBlock -1) < totalPage) ? (pageStart + pagePerBlock -1) : totalPage+1;
		if(totalPage !=0){
		if(nowBlock >1){ %>
	<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp;
	<%for (; pageStart <= pageEnd; pageStart++){ %>
	<a href="javascript:pageing('<%=pageStart%>')">
	<%if(pageStart==nowPage){ %><font color = "blue"> <%}%>
								[<%=pageStart %>]
								<%if(pageStart==nowPage){ %></font> <%} %></a>
								<%}//for%> &nbsp;
								<%if (totalBlock > nowBlock){ %>
						<a href = "javascript:block('<%=nowBlock+1%>')"	>.....next</a>
						<%} %>&nbsp;
						<%} %>
						<!--페이징 및 블럭 처리 End -->
		</td>
			<td align="right">
				<a href="post.jsp">[글쓰기]</a> 
				<a href="javascript:list()">[처음으로]</a>
			</td>
		</tr>
		</table>
	
	<form  name="searchFrm"  method="post" action="list.jsp">
	<table border="0" width="527" align=center cellpadding="4" cellspacing="0">
 		<tr>
  			<td align="center" valign="bottom">
   				<select name="keyField" size="1" >
    				<option value="name"> 이 름</option>
    				<option value="subject"> 제 목</option>
    				<option value="content"> 내 용</option>
   				</select>
   				<input type="text" size="16" name="keyWord">
   				<input type="button"  value="찾기" onClick="javascript:check()">
   				<input type="hidden" name="nowPage" value="1">
  			</td>
 		</tr>
	</table>
	</form>
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage %>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
</div>
</body>
</html>