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
				<div class="grid portfoliogrid">
				
					<article class="hentry">
					<header class="entry-header">
					<div class="entry-thumbnail">
						<a href="shop.html"><img src="img/health/3.m.pro.jpg" alt="p1"/></a>
					</div>
					<h2 class="entry-title"><a href="shop.html">Trainers</a></h2>

					</header>
					</article>
					
					<article class="hentry">
					<header class="entry-header">
					<div class="entry-thumbnail">
						<a href="about.jsp"><img src="img/health/Trophy.jpg" alt="p1"/></a>
					</div>
					<h2 class="entry-title"><a href="about.jsp" rel="bookmark">Let me introduce.</a></h2>

					</article>
					
					<article class="hentry">
					<header class="entry-header">
					<div class="entry-thumbnail">
						<a href="contact.jsp"><img src="img/health/path.png" alt="p1"/></a>
					</div>
					<h2 class="entry-title"><a href="contact.jsp" rel="bookmark">On your way back</a></h2>

					</header>
					</article>
					
					<article class="hentry">
					<header class="entry-header">
					<div class="entry-thumbnail">
						<a href="blog.jsp"><img src="img/health/3.bl.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="p1"/></a>
					</div>
					<h2 class="entry-title"><a href="blog.jsp" rel="bookmark">Blog</a></h2>
										<aside id="recent-posts-2" class="widget widget_recent_entries">
					<h4 class="widget-title">Recent Posts</h4>
					<ul>
						<li>
						<a href="blog-single.jsp">SOMEONE'S STORY</a>
						</li>
						<li>
						<a href="blog-2.jsp">THANKS FOR WATCHING</a>
						</li>


					</ul>
					</aside>
					</article>
					

					

				</div>
				<!-- .grid -->
				
				
				<nav class="pagination">
				
				
				<span class="page-numbers current">1</span>
				<a class="page-numbers" href="#">2</a>
				<a class="next page-numbers" href="#">Next »</a>
				
							
				</nav>
				<br/>
				
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
			<h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Edge Gym</h1>
			Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">Myeonmok Station best sports center</a>

		</div>
	</div>	
	</footer>
	<a href="#top" class="smoothup" title="Back to top"><span class="genericon genericon-collapse"></span></a>
</div>
<script src='js/jquery.js'></script>
<script src='js/plugins.js'></script>
<script src='js/scripts.js'></script>
<script src='js/masonry.pkgd.min.js'></script>
</body>
</html>