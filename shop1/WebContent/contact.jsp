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
				<article id="post-39" class="post-39 page type-page status-publish hentry">
				<header class="entry-header">
				<h1 class="entry-title">The way to visit</h1>
				</header>
				<!-- .entry-header -->
				<div class="entry-content">
						
					<!-- BEGIN MAP -->
					<p><script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script>
					<div style='overflow:hidden;height:380px;width:100%;'>
					<div id='gmap_canvas' style='height:380px;width:100%;'></div>
					<div>embed google maps</a></div>
					<style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
					</div>
					<p><script type='text/javascript'>function init_map(){var myOptions = {zoom:15,center:new google.maps.LatLng(37.586880,127.097883),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(37.586880,127.097883)});infowindow = new google.maps.InfoWindow({content:'<strong>Edge Gym</strong><br />seoil<br />university<br />'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script></p>
					<!-- END MAP -->
						
					<div class="wpcmsdev-columns">
						<div class="column column-width-one-half">
							<h4>Quick Contact</h4>						
							
							<form class="wpcf7" method="post" action="contact.php" id="contactform">
								<div class="form">
									<p><input type="text" name="name" placeholder="Name *"></p>
									<p><input type="text" name="email" placeholder="E-mail Address *"></p>
									<p><textarea name="comment" rows="3" placeholder="Message *"></textarea></p>
									<input type="submit" id="submit" class="clearfix btn" value="Send">
								</div>
							</form>
							<div class="done">								
								Your message has been sent. Thank you!
							</div>
							
						</div>
						<div class="column column-width-one-half">
							<h4>Find Us: 010 - 2876 - 1623</h4>
							<blockquote>
							<p>
								고용문의나 서비스에 대해 전반적으로 피드백이나 질문이 있으시면 문의 양식을 작성하여 보내 주십시오. <p>하지만 전화하는 것이 가장 좋습니다. 항시 대기중!!
								
							</p>
							<p>
								To visit : 서울특별시 중랑구 용마산로 90길 28(면목역 도보 10분)<p>
								Monday – Friday: 9am to 5pm<br>
								Saturday: 10am to 2pm<br>
								Sunday: Closed
							</p>
							</blockquote>
						</div>
					</div>
				</div>
				<!-- .entry-content -->
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
			<h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Edge Gym</h1>
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
<script src='js/validate.js'></script>
</body>
</html>