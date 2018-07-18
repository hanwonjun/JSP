<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<%@page import="ch14.BoardBean"%>
<jsp:useBean id="bMgr" class="ch14.BoardMgr" />
<%
	  request.setCharacterEncoding("EUC-KR");
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  String keyField = request.getParameter("keyField");
	  String keyWord = request.getParameter("keyWord");
	  bMgr.upCount(num);//조회수 증가
	  BoardBean bean = bMgr.getBoard(num);//게시물 가져오기
	  String name = bean.getName();
	  String subject = bean.getSubject();
      String regdate = bean.getRegdate();
	  String content = bean.getContent();
	  String filename = bean.getFilename();
	  int filesize = bean.getFilesize();
	  String ip = bean.getIp();
	  int count = bean.getCount();
	  session.setAttribute("bean", bean);//게시물을 세션에 저장
%>
<title>JSPBoard</title>


<!--host 방식 -->

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li 점 없애기 -->




<script type="text/javascript">
	function list(){
	 	document.listFrm.action="list.jsp";
	    document.listFrm.submit();
	 } 
	
	function down(filename){
		 document.downFrm.filename.value=filename;
		 document.downFrm.submit();
	}
</script>
</head>
<body>




<!-- 
<table class="mdl-data-table mdl-js-data-table">
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




<div align="center">
<br/><br/>
<table class="mdl-data-table mdl-js-data-table" align="center" width="80%" border=0 cellspacing="0" cellpadding="3">
<thead>
 <tr>
  <th class="mdl-data-table__cell--non-numeric" bgcolor="#9CA2EE" height="25" align="center"><font align="center">글읽기</font></th>
 </tr>
 </thead>
</table>
  <td colspan="2">
   <table class="mdl-data-table mdl-js-data-table" border="0" cellpadding="3" cellspacing="0" width="80%"> 
   
    <tr> 
  <th class="mdl-data-table__cell--non-numeric" align="center"  width="10%"> 이 름 </th>
  <th class="mdl-data-table__cell--non-numeric" ><%=name%></th>
  <th class="mdl-data-table__cell--non-numeric" align="center"  width=10%> 등록날짜 </th>
  <th class="mdl-data-table__cell--non-numeric"><%=regdate%></th>
 </tr>
 
 <tr> 
    <td class="mdl-data-table__cell--non-numeric" align="center" > 제 목</td>
    <td class="mdl-data-table__cell--non-numeric" colspan="3"><%=subject%></td>
   </tr>
   <tr> 
     <td class="mdl-data-table__cell--non-numeric" align="center" >첨부파일</td>
     <td class="mdl-data-table__cell--non-numeric"  colspan="3">
     <% if( filename !=null && !filename.equals("")) {%>
  		<a href="javascript:down('<%=filename%>')"><%=filename%></a>
  		 &nbsp;&nbsp;<font color="blue">(<%=filesize%>KBytes)</font>  
  		 <%} else{%> 등록된 파일이 없습니다.<%}%>
     </td>
   </tr>
   <tr> 
    <td class="mdl-data-table__cell--non-numeric" colspan="4"><br/><pre><%=content%></pre><br/></td>
   </tr>
   <tr>
    <td class="mdl-data-table__cell--non-numeric" colspan="4" align="right">
     <%=ip%>로 부터 글을 남기셨습니다./  조회수  <%=count%>
    </td>
   </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center" colspan="2"> 
 <hr/>
 [ <a href="javascript:list()" >리스트</a> | 
 <a href="update.jsp?nowPage=<%=nowPage%>&num=<%=num%>" >수 정</a> |
 <a href="reply.jsp?nowPage=<%=nowPage%>" >답 변</a> |
 <a href="delete.jsp?nowPage=<%=nowPage%>&num=<%=num%>">삭 제</a> ]<br>
  </td>
 </tr>
</table>

<form name="downFrm" action="download.jsp" method="post">
	<input type="hidden" name="filename">
</form>

<form name="listFrm" method="post">
	<input type="hidden" name="num" value="<%=num%>">
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
	<%if(!(keyWord==null || keyWord.equals("null"))){ %>
	<input type="hidden" name="keyField" value="<%=keyField%>">
	<input type="hidden" name="keyWord" value="<%=keyWord%>">
	<%}%>
</form>
</div>
</body>
</html>