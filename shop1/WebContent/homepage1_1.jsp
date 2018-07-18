<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%
    request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="regBean" class="ch08.MemberBean" scope="page"/>
<jsp:setProperty name="regBean" property="*"	/>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id = "";
	String passwd = "";
	String name = "";
	String email = "";
	String phone = "";
	
	int counter = 0;
	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mydb", "root", "seoil");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from member");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�ϼ��ϴ��б� ���ͳ������� �ѿ���</title>

<style type="text/css">
html {width: 100%;height: 100%;margin: 0;padding: 0;}
body {width: 100%;height: 100%;margin: 0;padding: 0;}
header {width: 80%;height: 60px;position: fixed;top: 0;}
ul {float:center; width:80%}
li { width:12%}
#content1 {width: 80%;margin: 0 auto;padding: auto;}
#content2 {width: 80%; height: 60px; margin:  auto;padding: 0px ;}
footer {width: 80%;height: 60px;position: fixed;bottom: 0;}

#wrap{width:80%;position:relative;}
#wrap2{width:80%;position:relative;}
#wrap3{width:80%;position:relative;}
#box1 {width:80%; height:100px; background:#eee; }
a{text-decoration:none;}
a:visited{color:black; text-decoration:none;}
a:active{color:green text-decoration:none;}
a:hover{color:green text-decoration:none;}
div{width:100%}
hr{width:80%}

</style>

</head>

<body>
	<audio autoplay>
		<source src="������.mp3" type ="audio/mp3" >
	</audio>
<header>
  <ul>
  <li><a href="#content1"><font  size="4">Top</font></a></li>
  <li><a href="#content2"><font  size="4">Bottom</font></a></li>
  <li><a href="error_404.jsp"><font  size="4">error-404</font></a></li>
  <li><a href="error_500.jsp"><font  size="4">error-500</font></a></li>
  
  </ul>
</header>
<%
	while(rs.next()) {
		id = rs.getString("id");
		passwd = rs.getString("passwd");
		name = rs.getString("name");
		email = rs.getString("email");
		phone = rs.getString("phone");
		counter++;
%>
<%
	}	// while
%>
<%
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		if(rs != null) {
			try {
				rs.close();
			}
			catch(Exception ex1) {}
		}
		if(stmt != null) {
			try {
				stmt.close();
			}
			catch(Exception ex1) {}
		}
		if(conn != null) {
			try {
				conn.close();
			}
			catch(Exception ex1) {}
		}
	} &nbsp;
%>
	<div align="center">
	<br><br><br>
	<img src = "ȸ����.png" width="50"  height = "50" title = "memebership" alt = "ȸ����"><%= counter %>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
	<font size="4">
	| <%=session.getAttribute("id") %>�� |</font>
	<a href="logout.jsp" onClick="logout.jsp">
	<font  size="4">
	 �α׾ƿ� |</font></a>
	<a href="register.jsp" onClick="register.jsp">
	<font  size="4">
	 ȸ������ |</font></a>
	 <a href="memberList.jsp" onClick="view.jsp?articleId=1&writerId=hwj">
	<font  size="4">
	 ȸ������ |</font></a>
	 
	<a href="homepage4.jsp" onClick="homepage4.jsp">
	<img src = "����.png" width="80%"  height = "200" title = "main" alt = "�����Դϴ�."></a>
	</div>

    
   

<div align="center">
		<hr></hr>
		<ul>
		<font   size="2"><a href="homepage1_1.jsp" onClick="homepage1_1.jsp">��������</a></font>&nbsp; &nbsp;
		<font   size="2"><a href="homepage1_2.jsp" onClick="homepage1_2.jsp">�����Խ���</a></font>&nbsp; &nbsp;
		<font   size="2"><a href="homepage1_3.jsp" onClick="homepage1_3.jsp">IT����</a></font>&nbsp; &nbsp;
		<font   size="2"><a href="homepage1_4.jsp" onClick="homepage1_4.jsp">���������ݱ���</a></font>&nbsp; &nbsp;
		<font   size="2"><a href="homepage1_5.jsp" onClick="homepage1_5.jsp">�����λ�</a></font>&nbsp; &nbsp;
		<font   size="2"><a href="homepage1_6.jsp" onClick="homepage1_6.jsp">�⼽üũ</a></font>&nbsp; &nbsp;
		</ul>
		<hr></hr>
		<br>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
$("header2").click(function(){
   var contHeight = $(document).scrollTop();
   var sec2 = $('#box1').height();
   $("#box1").slideToggle(50);
   $( 'html, body' ).stop().animate( { scrollTop : contHeight + sec2 }, 50 );
});
</script>

</body>

<!-- �� �Ʒ��κ�  -->

<div align="center">
<jsp:include page = "board1.jsp"/>
	
	<hr></hr>
	
    

	
	<div align="center"><font color="#ff9900" size="2"><span>copyright 2017,���ϴ��б� ���ͳ������� 201262029-�ѿ���</span></font></div>
	
</div>



</html>
