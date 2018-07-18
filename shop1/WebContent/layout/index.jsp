<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="defalut.css" rel="stylesheet" type="text/css">

</head>
<body>

	<jsp:include page="header_nav.jsp"/>


<!--
<div id="content">
	<section id = "main_section">
		<h1> Main section</h1>
		<p>main test </p>
	</section>
	<aside id = "main_aside">
		<h1> Main aside</h1>
		<p> aside test</p>
	</aside>
</div>

-->

<div id="content">
	<section id = "main_section">
	
		<article class = "main_article">
			<h1> Main Article</h1>
			<p> test1 </p>
		</article>

		<article class = "main_article">
			<h1> Main Article</h1>
			<p> test2 </p>
		</article>
		
		<article class = "main_article">
			<h1> Main Article</h1>
			<p> test3 </p>
		</article>
		
	</section>
	
	<aside id = "main_aside">
		<h1> Main aside</h1>
		<p> aside test</p>
	</aside>
</div>



	<jsp:include page="footer.jsp"/>




</body>
</html>