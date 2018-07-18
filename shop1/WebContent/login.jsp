<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch13.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 소스코드 참조 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container" style="padding-left: 380px; padding-top: 150px">
		<div class="col-sm-6">
			<h1 align="center" style="font-weight: bold;">로그인</h1>
			<form method="post" action="loginProc.jsp">
				<!--무조건 post로 get 하면안됨. -->
				<div class="form-group">
					<label for="id">ID:</label> <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력해주세요" required="required">
				</div>
				<div class="form-group">
					<label for="passwd">Password:</label> <input type="password" class="form-control" id="passwd" name="passwd" maxlength="20"
						placeholder="비밀번호를 입력해주세요" required="required">
				</div>
				<div class="checkbox">
					<label><input type="checkbox">기억하기</label>
				</div>
			<div class="form-group">	
				<input type="submit" value="확인" class="btn btn-default"></input>
				<div align="right">
				<input type="submit" value="ID찾기" class="btn btn-default"></input>
				<input type="submit" value="PW찾기" class="btn btn-default"></input>
				</div>
			</div>	
			</form>
		</div>
	</div>
</body>
</html>
