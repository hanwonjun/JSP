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
			<div id="primary" class="content-area column two-thirds">
				<main id="main" class="site-main" role="main">
				<article>
				<header class="entry-header">
				<h1 class="entry-title">SOMEONE'S STORY</h1>
				<div class="entry-meta">
						<span class="posted-on"><time class="entry-date published">April 12, 2018</time></span>						
						<span class="comments-link"><a href="#">Leave a comment</a></span>
					</div>
				<div class="entry-thumbnail">					
					<img src="img/health/2.bl.jpg" alt="">
				</div>
				</header>
				<!-- .entry-header -->
				<div class="entry-content">
					로딩시 가장높은 글리코겐 저장방법

모든식사에서 글리코겐 저장량이 높아지는 것은 아니다.
3일간의 로딩을 식사별로 실험해본 결과에 의하면

1.지방과 단백질의 식사시 근육 1kg당 6.3g의 글리코겐저장

2.혼합식사(탄수화물+단백질+지방) 근육 1kg당 17.5g의 글리코겐저장

3.탄수화물만으로 식사를 한경우는 근육 1kg당 33.1g의 글리코겐저장

하지만 위의 글리코겐 저장량을 최대로 끌어올리기 위해 세가지 실험을 했는데

1.혼합식사후 3일간 고탄수화물 식사를 했을 경우 근글리코겐 저장량 1kg당 15g에서 25g까지 증가하였다.

2.혼합식사후 1일간 글리코겐을 완전 고갈시킬정도의 운동을 한 후 3일간 고탄수화물 식사를 했을 경우 근글리코겐 저장량이 두배인 1kg당 50g까지 증가하였다.

3.혼합식사후 3일간 단백질+지방식사+저탄수화물(밴딩)과 글리코겐을 완전 고갈시킬정도의 운동을 한 후 3일간 고탄수화물 식사를 했을 경우 근글리코겐이 조금더 증가한 저장량이 1kg당 55g까지 증가하였다.

결론적으로 로딩의 경우 반드시 글리코겐의 고갈 상태에서 고탄수화물만으로 로딩을 하는것이 최고 높은 글리고겐을 저장할 수 있다 하겠다.

로딩과 밴딩에 대한 견해가 많다 해야한다 말아야 한다.
나의 경우는 선수생활동안 로딩과 밴딩의 혜택을 엄청나게 누렸다.

단 지방을 만족할 만큼 제거했을 때라는 조건이 붙는다.

우리는 다들 다양한 체질을 가지고 있다.
단단하지만 신축성이 적은 체질 즉 강인한 근육이 돋보이지만 운동을 했을때와 하지 않았을때 편차가 적다.
운동을 하지않고 있을때와 운동시 수분보유력이 너무 좋아 엄청나게 차이를 보이는 체질은 신축성이 좋다.
로딩의 혜택은 신축성이 좋은체질에 훨씬 높게 작용한다.

특히 요즘은 스테로이드 뿐만아니라 인슐린,성장호르몬, igf-1의 사용으로 수분 보유도가 예전보다 훨씬 높아져 풍선같은 근육의 형태를 갖는다.
이런 선수들일 수록 로딩의 중요성은 매우 중요하다.

글리코겐 1g을 저장하기위해선 약4배의 수분이 필요하다.
우리가 무대에 서기위해선 근세포 수분을 충분히 보유한 상태에서 피하만 말려야 한다.
그래야 무대오르기전 펌핑시 확장능력이 커지면서 강도와 사이즈를 높일 수 있기때문이다.
이 확장 능력을 위해 근세포속 에너지 확보와 수분이 꼭 필요하다.
이것이 로딩의 목적이다.
				</div>
				<!-- .entry-content -->
				<footer class="entry-footer">
				<span class="cat-links">
					<span class="cat-links">
					운동일지 - Edge Gym 최고의 시설
					</span>
				</footer>
				<!-- .entry-footer -->
				</article>
				<!-- #post-## -->
				<nav class="navigation post-navigation" role="navigation">
				<h1 class="screen-reader-text">Post navigation</h1>
				<div class="nav-links">
					<div class="nav-previous">
						<a href="#" rel="prev"><span class="meta-nav">←</span> Thanks for watching!</a>
					</div>
				</div>
				<!-- .nav-links -->
				</nav>
				<!-- .navigation -->
				<div id="comments" class="comments-area">
					<div id="respond" class="comment-respond">
						<h3 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="/demo-moschino/embed-audio/#respond" style="display:none;">Cancel reply</a></small></h3>
						<form action="http://www.themepush.com/demo-moschino/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
							<p class="comment-notes">
								<span id="email-notes">Your email address will not be published.</span> Required fields are marked <span class="required">*</span>
							</p>
							<p class="comment-form-comment">
								<label for="comment">Comment</label><textarea id="comment" name="comment" cols="45" rows="8" aria-required="true" required></textarea>
							</p>
							<p class="comment-form-author">
								<label for="author">Name <span class="required">*</span></label><input id="author" name="author" type="text" value="" size="30" aria-required="true" required="required">
							</p>
							<p class="comment-form-email">
								<label for="email">Email <span class="required">*</span></label><input id="email" name="email" type="email" value="" size="30" aria-describedby="email-notes" aria-required="true" required="required">
							</p>
							<p class="comment-form-url">
								<label for="url">Website</label><input id="url" name="url" type="url" value="" size="30">
							</p>
							<p class="form-submit">
								<input name="submit" type="submit" id="submit" class="submit" value="Post Comment"><input type="hidden" name="comment_post_ID" value="90" id="comment_post_ID">
								<input type="hidden" name="comment_parent" id="comment_parent" value="0">
							</p>
							<noscript>
							</noscript>
						</form>
					</div>
					<!-- #respond -->
				</div>
				<!-- #comments -->
				</main>
				<!-- #main -->
			</div>
			<div id="secondary" class="column third">
				<div id="sidebar-1" class="widget-area" role="complementary">
					<aside id="text-5" class="widget widget_text">
					<h4 class="widget-title">About Me</h4>
					<div class="textwidget">
						<p>
							<img src="http://www.themepush.com/demo-hypnosa/wp-content/uploads/sites/9/2015/09/avatar5.png" class="alignleft" style="width:80px;border-radius:50%;margin-bottom:0;"> I'm a professional trainer for 10 years. Through constant exercise, she married her ideal type.
						</p>
					</div>
					</aside>
					<aside id="recent-posts-2" class="widget widget_recent_entries">
					<h4 class="widget-title">Recent Posts</h4>
					<ul>
						<li>
						<a href="blog-single.jsp">SOMEONE'S STORY</a>
						</li>
						<li>
						<a href="blog-2.jsp">THANKS FOR WATCHING</a>
						</li>
						<li>
						<a href="blog-3.jsp">DREAMING AWAY</a>
						</li>
						<li>
						<a href="blog-4.jsp">Steadily on holiday</a>
						</li>

					</ul>
					</aside>
					<aside id="text-6" class="widget widget_text">
					<h4 class="widget-title">Like us on Facebook</h4>
					<div class="textwidget">
						<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fwowthemesnet-562560840468823%2F&amp;tabs=timeline&amp;width=340&amp;height=380&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=false&amp;appId=365036103630036" width="340" height="380" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowtransparency="true">
						</iframe>
					</div>
					</aside>

					<aside id="text-7" class="widget widget_text">
					<h4 class="widget-title">Follow us</h4>
					<div class="textwidget">
						<!-- Place this tag in your head or just before your close body tag. -->
						<script src="https://apis.google.com/js/platform.js" async="" defer="" gapi_processed="true"></script>
						<!-- Place this tag where you want the widget to render. -->
						<div id="___page_0" style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 300px; height: 377px; background: transparent;">
							<iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 300px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 377px;" tabindex="0" vspace="0" width="100%" id="I0_1460806394603" name="I0_1460806394603" src="https://apis.google.com/u/0/_/widget/render/page?usegapi=1&amp;href=%2F%2Fplus.google.com%2Fu%2F0%2F110916582192388695332&amp;rel=publisher&amp;origin=http%3A%2F%2Fwww.themepush.com&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en.5rbYCKK8ELg.O%2Fm%3D__features__%2Fam%3DAQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCNt4tfE4T2zmac5ke0V9FW49A3yCA#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conload&amp;id=I0_1460806394603&amp;parent=http%3A%2F%2Fwww.themepush.com&amp;pfname=&amp;rpctoken=19037393" data-gapiattached="true" title="+Badge">
							</iframe>
						</div>
					</div>
					</aside>
				</div>
				<!-- .widget-area -->
			</div>
			<!-- #secondary -->
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