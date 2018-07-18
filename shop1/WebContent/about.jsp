<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch08.*"%> 
<%
String id = (String) session.getAttribute("id");
String pass = (String) session.getAttribute("pass");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한원준의 헬스클럽</title>
<link rel='stylesheet' href='css/woocommerce-layout.css' type='text/css' media='all'/>
<link rel='stylesheet' href='css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)'/>
<link rel='stylesheet' href='css/woocommerce.css' type='text/css' media='all'/>
<link rel='stylesheet' href='css/font-awesome.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700' type='text/css' media='all'/>
<link rel='stylesheet' href='css/easy-responsive-shortcodes.css' type='text/css' media='all'/>

</head>
<body class="home page page-template page-template-template-portfolio page-template-template-portfolio-php">
<div id="page">
	<div class="container">
	<% if (session.getAttribute("id") != null){ %>
		<a href="login.jsp" onClick="login.jsp"><a href="login.jsp" onClick="login.jsp">
		<font size="4"><font size="4">
		|<%=id%> 님 환영합니다| </font></a>
	<% }else if(session.getAttribute("id") == null){ %>
		<a href="login.jsp" onClick="login.jsp">
		<font size="4">
		| 로그인 |</font></a>
	<% } %>

		
		<a href="logout.jsp" onClick="logout.jsp">
		<font  size="4">
		 로그아웃 |</font></a>
		<a href="register.jsp" onClick="register.jsp">
		<font  size="4">
		 회원가입 |</font></a> 
	<a href="login.jsp" onClick="login.jsp">
 
		<header id="masthead" class="site-header">
		<div class="site-branding">
			<h1 class="site-title"><a href="index.jsp" rel="home">Edge Gym</a></h1>
			<h2 class="site-description">Myeonmok Station best sports center</h2>
		</div>
		<nav id="site-navigation" class="main-navigation">
		<button class="menu-toggle">Menu</button>
		<a class="skip-link screen-reader-text" href="#content">Skip to content</a>
		<div class="menu-menu-1-container">
			<ul id="menu-menu-1" class="menu">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="shop.html">Trainers</a></li>
				<li><a href="blog.jsp">Blog</a></li>
				<li><a href="frame.jsp">Board</a></li>
				<li><a href="#">Pages</a>
				<ul class="sub-menu">
					
					<li><a href="blog-single.jsp">Blog Article</a></li>
					<li><a href="shop.html">Trainers</a></li>
					  
				</ul>
				</li>
								<li><a href="#">myInfo</a>
				<ul class="sub-menu">
					
					<li><a href="1basket.jsp">Basket</a></li>
					<li><a href="1myInfo.jsp">myInfo</a></li>
					  
				</ul>
				</li>  
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
		</div>
		</nav>
		</header>
		<!-- #masthead -->
		<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main">
				
				<article class="hentry">
				<header class="entry-header">
				<h1 class="entry-title">About</h1>	
				</header>
				<!-- .entry-header -->

				<div class="entry-content">
				<p><img style="border:10px solid #f4f5f6" src="img/health/Trophy.jpg" alt="bg5" width="220" class="alignright"></p>
				<p></p>
				<p>안녕하세요. Edge Gym 대표 한원준입니다. <p>
                                	최선을 다해 여러분들이 원하는 목표를 이루도록 해드리겠습니다. <p>
																		
									이를 위해서 Edge Gym 팀원은 트레이닝관련 전공자 및 국가자격증 소지자로 구성되어 있음은 물론<p>
									더욱 더 서비스의 수준을 높이기 위하여 우리나라 최고의 교수님, 박사님들과 교류를 맺고 자문을 구하고 있으며,
									주기적인 세미나를 통해 자기개발에 끊임없이 노력하고 있습니다.
									<p>
									오늘 변한다면 목표는 이루게 됩니다.</p>
				<h2 style="font-family: 'Herr Von Muellerhoff';color:#ccc;font-weight:300;">Yours, Han Won Joon</h2>
				</div><!-- .entry-content -->
				</article>
				
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->
	</div>
	<!-- .container -->
	<footer id="colophon" class="site-footer">
	<div class="container">
		<div class="site-info">
			<h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Moschino</h1>
			Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">Myeonmok Station best sports center</a>

		</div>
	</div>	
	</footer>
	<a href="#top" class="smoothup" title="Back to top"><span class="genericon genericon-collapse"></span></a>
</div>
<!-- #page -->
<script src='js/jquery.js'></script>
<script src='js/plugins.js'></script>
<script src='js/scripts.js'></script>
<script src='js/masonry.pkgd.min.js'></script>
</body>
</html>