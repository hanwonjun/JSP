<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="ch08.MemberBean" scope="page"/>
<jsp:setProperty name="regBean" property="*"	/>

<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String msg = "회원 가입 성공";
	String url = "index.jsp";
	
	int counter = 0;
	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mydb", "root", "seoil");
		stmt = conn.createStatement();
		String sql = "insert into member values( "
					 + "'" + regBean.getId() + "',"
					 + "'" + regBean.getPasswd() + "'," 
					 + "'" + regBean.getName() + "',"
							 + "'" + regBean.getSex() + "',"
									 + "'" + regBean.getBirthday() + "',"
					 + "'" + regBean.getEmail() + "',"
							 
					
											 + "'" + regBean.getZipcode() + "',"
													 + "'" + regBean.getAddress() + "',"
															 + "'" + regBean. getHobby() + "',"
													
															 
					 + "'" + regBean.getJob() + "')";
		out.println(sql);
		int row = stmt.executeUpdate(sql);
		
		if(row != 1) {
			msg = "회원 가입 실패";
			url = "register.jsp";
		}
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
	}
%>

<script>
	alert("<%= msg %>");
	location.href = "<%= url %>";
</script>