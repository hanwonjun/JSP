<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>JSPBoard</title>

<!--host 방식 -->

<link rel="stylesheet" href="mdl/material.min.css">
<script src="mdl/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" href="style.css"> <!-- li 점 없애기 -->
</head>
<body>





<div align="center">
<br/><br/>
<table class="mdl-data-table mdl-js-data-table" width="80%" cellspacing="0" cellpadding="3">
	<thead>
	<tr>
		<th class="mdl-data-table__cell--non-numeric" bgcolor="84F399" height="25" align="center">글쓰기</th>
	</tr>
	 </thead>
</table>
<br/>
<form name="postFrm" method="post" action="postProc.jsp" enctype="multipart/form-data">
<table class="mdl-data-table mdl-js-data-table"  width="80%" cellspacing="0" cellpadding="3" align="center">
	<thead>
	<tr>
		<td class="mdl-data-table__cell--non-numeric" align=center>
		<table class="mdl-data-table__cell--non-numeric" border="0" width="100%" align="center">
			<tr>
				<td class="mdl-data-table__cell--non-numeric" width="10%">성 명</td>
				<td class="mdl-data-table__cell--non-numeric" width="90%">
				<input type="text" name="name" size="10" maxlength="8"></td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric" width="10%">제 목</td>
				<td class="mdl-data-table__cell--non-numeric" width="90%">
				<input type="text" name="subject" size="50" maxlength="30"></td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric" width="10%">내 용</td>
				<td class="mdl-data-table__cell--non-numeric" width="90%"><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td class="mdl-data-table__cell--non-numeric" width="10%">비밀 번호</td>
				<td class="mdl-data-table__cell--non-numeric" width="90%"><input type="password" name="pass" size="15" maxlength="15"></td>
			</tr>
		
			 <tr>
     			<td class="mdl-data-table__cell--non-numeric" width="10%">파일찾기</td> 
     			<td class="mdl-data-table__cell--non-numeric" width="90%" ><input type="file" name="filename" size="50" maxlength="50"></td>
    		</tr>
 			<tr>
 				<td>내용타입</td>
 				<td> HTML<input type=radio name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
  			 	TEXT<input type=radio name="contentType" value="TEXT" checked>
  			 	</td>
 			</tr>

			<tr>
				<td colspan="2">
					 <input type="submit" value="등록">
					 <input type="reset" value="다시쓰기">
					 <input type="button" value="리스트" onClick="javascript:location.href='list.jsp'">
				</td>
			</tr>
		</table>
		</td>
	</tr>
	</thead>
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>
</body>
</html>