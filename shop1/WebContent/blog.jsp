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
				<div class="grid bloggrid">
				
					<article>
					<header class="entry-header">
					<h1 class="entry-title"><a href="blog-single.jsp" rel="bookmark">Someone's story</a></h1>
					<div class="entry-meta">
						<span class="posted-on"><time class="entry-date published">April 12, 2018</time></span>						
						<span class="comments-link"><a href="#">Leave a comment</a></span>
					</div>
					<div class="entry-thumbnail">
					<a href="blog-single.jsp">				
						<img src="img/health/1.bl.jpg" alt=""></a>
					</div>
					</header>
					<div class="entry-summary">
						<p>
							#PushDay



워밍업 <p> 트레드밀 1km, 



벤치프레스 5세트, 

스미스 인클라인 벤치프레스 4세트, 

OHP 4세트, 

사레레 3세트, 

덤벨 프레스 3세트 + 덤벨 인클라인 프레스 2세트, 

시티드 체스트프레스 3세트, 

펙토랄 플라이 3세트, 

케이블 플라이 3세트, 

중간중간 풀업 4세트<br>



쿨다운 - 트레드밀 1.5km<p>  



새로 헬스장 등록해서 기구 이것저것 써본다고 가슴을 많이 불태웠네요 ㅎㅎ</a>
						</p>
					</div>
					<footer class="entry-footer">
					<span class="cat-links">
					운동일지 - 28일차</a>
					</span>
					</footer>
					</article>
					
					<article>
					<header class="entry-header">
					<h1 class="entry-title"><a href="blog-single.jsp" rel="bookmark">Thanks for watching</a></h1>
					<div class="entry-meta">
						<span class="posted-on"><time class="entry-date published">April 7, 2018</time></span>						
						<span class="comments-link"><a href="#">Comment</a></span>
					</div>
					<div class="entry-thumbnail">	
					<a href="blog-2.jsp">					
						<img src="img/health/2.bl.jpg" alt=""></a>
					</div>
					</header>
					<div class="entry-summary">
						<p>
							로딩시 가장높은 글리코겐 저장방법<p>

모든식사에서 글리코겐 저장량이 높아지는 것은 아니다.
3일간의 로딩을 식사별로 실험해본 결과에 의하면
<p>
1.지방과 단백질의 식사시 근육 1kg당 6.3g의 글리코겐저장

2.혼합식사(탄수화물+단백질+지방) 근육 1kg당 17.5g의 글리코겐저장

3.탄수화물만으로 식사를 한경우는 근육 1kg당 33.1g의 글리코겐저장

하지만 위의 글리코겐 저장량을 최대로...
						</p>
					</div>
					<footer class="entry-footer">
					<span class="cat-links">
					운동일지 - 나의 사랑 프로틴!!
					</span>
					</footer>
					</article>
					
	
					<article>
					<header class="entry-header">
					<h1 class="entry-title"><a href="blog-single.jsp" rel="bookmark">Dreaming Away</a></h1>
					<div class="entry-meta">
						<span class="posted-on"><time class="entry-date published">April 1, 2018</time></span>						
						<span class="comments-link"><a href="#">Leave a comment</a></span>
					</div>
					<div class="entry-thumbnail">	
					<a href="blog-3.jsp">					
						<img src="img/health/3.bl.jpg" alt=""></a>
					</div>
					</header>
					<div class="entry-summary">
						<p>
							 아침 <br>

10시21분: 애니멀컷 1팩

11시28분: 킬잇 1스쿱<br>






점심<br>

14시 30분: 닭가슴살 100g, 현미밥 90g, 바나나1개, 해바라기씨 4g<br>



저녁 전
<br>
17시10분: 애니멀컷 1팩<br>



저녁
<br>
19시50분: 현미밥 110g, 닭가슴살 100g, 전란(계란프라이)1개<p>


운동 중: 엑텐 1스쿱<br>



운동 후: 바나나1개, 신타6아이솔1스쿱<p>  

총 열량<br>

탄수화물 210g, 지방17g, 단백질 ...
						</p>
					</div>
					<footer class="entry-footer">
					<span class="cat-links">
					운동일지 - 결전의날
					</span>
					</footer>
					</article>
					
					<article>
					<header class="entry-header">
					<h1 class="entry-title"><a href="blog-single.jsp" rel="bookmark">Steadily on holiday</a></h1>
					<div class="entry-meta">
						<span class="posted-on"><time class="entry-date published">April 9, 2016</time></span>						
						<span class="comments-link"><a href="#">Comments</a></span>
					</div>
					<div class="entry-thumbnail">	
					<a href="blog-4.jsp">					
						<img src="img/health/4.bl.jpg" alt=""></a>
					</div>
					</header>
					<div class="entry-summary">
						<p>
							필라테스라는 운동을..<br>저는 이곳에 
다니기 전까지만 해도 잘 몰랐어요. 
주위에서 이 운동한다고 하면 
와, 돈이 많구나 하고 생각할 뿐 
저는 남 얘기라는 생각이 많이 들었죠. 
<p>

하지만 제가 운동에 대해 영 취미를 
붙이지 못하고 헬스장만 끊어놓고 
기간이 다 될 때까지 거의 가지 않는 
사태가 반복되다보니, 제가 좋아하는 운동을 
하면 더 열심히 하고 좋을 것 
같다고 결론을 지었어요!! 
<p>

그때마침, 친구들이 한다는 필라테스가 
떠올랐고, 돈이 조금 들더라도 
제 몸을 위해서 투자한다는 생각으로 
저희 집 근처에 있는 목동필라테스 전문 
톤필라테스를 다니게 됐습니다~ㅎㅎ
						</p>
					</div>
					<footer class="entry-footer">
					<span class="cat-links">
					운동일지 - Edge Gym 최고의 시설
					</span>
					</footer>
					</article>	
				
				
				
					
				</div>
				<div class="clearfix">
				</div>
				<nav class="pagination"></nav>
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
			
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
						<a href="blog-3.jsp/">DREAMING AWAY</a>
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