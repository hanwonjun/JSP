<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head> 
<%@ page import="ch14.BoardBean"%>
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  BoardBean bean = (BoardBean)session.getAttribute("bean");
	  String subject = bean.getSubject();
	  String name = bean.getName(); 
	  String content = bean.getContent(); 
%>
<title>JSPBoard</title>
<!--host 방식 -->

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li 점 없애기 -->


<script>
	function check() {
	   if (document.updateFrm.pass.value == "") {
		 alert("수정을 위해 패스워드를 입력하세요.");
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>
</head>
<body>

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
 -->





<div align="center">
<br/><br/>
<table class="mdl-data-table mdl-js-data-table" align="center" width="70%" cellspacing="0" cellpadding="3">
<thead>
  <tr>
   <th  align="center"  bgcolor="#9CA2EE" height="25" ><font align="center">수정하기</font></th>
  </tr>
  </thead>
</table>
<form name="updateFrm" method="post" action="updateProc.jsp" >
<table class="mdl-data-table mdl-js-data-table" border="0" cellpadding="3" cellspacing="0" width=70%>
<thead>
 <tr>
  <td class="mdl-data-table__cell--non-numeric" align="center">
   <table class="mdl-data-table mdl-js-data-table" border="0" width=70%>
    <tr>
     <td class="mdl-data-table__cell--non-numeric" align="center" bgcolor="#DDDDDD" width="10%">이 름</td>
     <td class="mdl-data-table__cell--non-numeric" width="90%">
	  <input type="text" name="name" value="<%=name%>" size="30" maxlength="20">
	 </td>
	</tr>
	<tr>
     <td class="mdl-data-table__cell--non-numeric" align="center" bgcolor="#DDDDDD" width="10%">제 목</td>
     <td class="mdl-data-table__cell--non-numeric" width="90%">
	  <input type="text" name="subject" size="50" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td class="mdl-data-table__cell--non-numeric" align="center" bgcolor="#DDDDDD" width="10%">내 용</td>
     <td class="mdl-data-table__cell--non-numeric" width="90%">
	  <textarea name="content" rows="10" cols="50"><%=content%></textarea>
	 </td>
    </tr>
	<tr>
     <td class="mdl-data-table__cell--non-numeric" align="center" bgcolor="#DDDDDD" width="10%">비밀 번호</td> 
     <td class="mdl-data-table__cell--non-numeric" width="90%"><input type="password" name="pass" size="15" maxlength="15">
      수정시에는 비밀번호가 필요합니다.</td>
    </tr>
	<tr>
     <td class="mdl-data-table__cell--non-numeric" colspan="2" height="5"><hr/></td>
    </tr>
	<tr>
     <td class="mdl-data-table__cell--non-numeric" colspan="2">
	  <input type="button" value="수정완료" onClick="check()">
      <input type="reset" value="다시수정"> 
      <input type="button" value="뒤로" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
 </thead>
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage %>">
 <input type='hidden' name="num" value="<%=num%>">
</form> 
</div>
</body>
</html>