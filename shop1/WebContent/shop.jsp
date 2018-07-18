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
			<h1 class="site-title"><a href="index.html" rel="home">Edge Gym</a></h1>
			<h2 class="site-description">Myeonmok Station best sports center</h2>
		</div>
		<nav id="site-navigation" class="main-navigation">
		<button class="menu-toggle">Menu</button>
		<a class="skip-link screen-reader-text" href="#content">Skip to content</a>
		<div class="menu-menu-1-container">
			<ul id="menu-menu-1" class="menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="shop.html">Trainers</a></li>
				<li><a href="blog.html">Blog</a></li> 
				<li><a href="frame.jsp">Board</a></li>
				<li><a href="#">Pages</a>
				<ul class="sub-menu">
					  
					<li><a href="blog-single.html">Blog Article</a></li>
					<li><a href="shop.html">Trainers</a></li>
					  
				</ul>
				</li>
								<li><a href="#">myInfo</a>
				<ul class="sub-menu">
					
					<li><a href="1basket.jsp">Basket</a></li>
					<li><a href="1myInfo.jsp">myInfo</a></li>    
					  
				</ul>
				</li>  
				<li><a href="contact.html">Contact</a></li>
				
			</ul>
		</div>
		</nav>
		</header>
		<!-- #masthead -->
		<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main" role="main">
				<p class="woocommerce-result-count">
					 Showing 1–8 of 12 results
				</p>
				<form class="woocommerce-ordering" method="get">
					<select name="orderby" class="orderby">
						<option value="menu_order" selected="selected">Default sorting</option>
						<option value="popularity">Sort by popularity</option>
						<option value="rating">Sort by average rating</option>
						<option value="date">Sort by newness</option>
						<option value="price">Sort by price: low to high</option>
						<option value="price-desc">Sort by price: high to low</option>
					</select>
				</form>
				<ul class="products">
				
					<li class="first product">
					<a href="shop-single.html">
					<span class="onsale">Best!</span>
					<img src="img/health/1.profile.jpg" alt="">
					<h3>Trainer - Han Won Joon</h3>
					<span class="price"><span class="amount">$34.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788990758422" class="button">Add to cart</a>
					</li>

					<li class="product">
					<a href="shop-2.html">
					<img src="img/health/1.w.pro.png" alt="">
					<h3>Trainer - In Hye Bin</h3>
					<span class="price"><span class="amount">$35.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788991268630" class="button">Add to cart</a>
					</li>
					
					<li class="product">
					<a href="shop-3.html">
					<img src="img/health/1.m.pro.jpg" alt="">
					<h3>Trainer - Kim Jin-hae</h3>
					<span class="price"><span class="amount">$125.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788992939508" class="button">Add to cart</a>
					</li>
					
					<li class="last product">
					<a href="shop-4.html">
					<img src="img/health/2.w.pro.jpg" alt="">
					<h3>Trainer - Cho Min Ji</h3>
					<span class="price"><span class="amount">$28.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788994774312" class="button">Add to cart</a>
					</li>
					
					<li class="first product">
					<a href="shop-5.html">
					<span class="onsale">3st!</span>
					<img src="img/health/3.w.pro.jpg" alt="">
					<h3>Trainer - Cha Mi Rim</h3>
					<span class="price"><span class="amount">$15.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788994774374" class="button">Add to cart</a>
					</li>
					
					<li class="product">
					<a href="shop-6.html">
					<img src="img/health/2.m.pro.jpg" alt="">
					<h3>Trainer - Kim Min-jun</h3>
					<span class="price"><span class="amount">$16.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788995379493" class="button">Add to cart</a>
					</li>
					
					<li class="product">
					<a href="shop-7.html">
					<span class="onsale">2st!</span>
					<img src="img/health/5.w.pro.jpg" alt="">
					<h3>Trainer - Shin ji</h3>
					<span class="price"><span class="amount">$36.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788996094012" class="button">Add to cart</a>
					</li>
					
					<li class="last product">
					<a href="shop-8.html">
					<img src="img/health/3.m.pro.jpg" alt="">
					<h3>Trainer - Koo Hyun Ho</h3>
					<span class="price"><span class="amount">$49.00</span></span>
					</a><a href="http://localhost:8080/shop1/bookInfo.jsp?isbn=9788996094029" class="button">Add to cart</a>
					</li>
					
				</ul>
				<nav class="woocommerce-pagination">
				<ul class="page-numbers">
					<li><span class="page-numbers current">1</span></li>
					<li><a class="page-numbers" href="#">2</a></li>
					<li><a class="next page-numbers" href="#">→</a></li>
				</ul>
				</nav>
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
</body>
</html>