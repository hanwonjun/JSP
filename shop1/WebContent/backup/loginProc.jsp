<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>

<jsp:include page = "index_login_user.html"/>

<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	boolean success = false;
	
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mydb",
											"root","seoil");
		
		String sql = "select count(*) from member where id ='"
					+id +"' and passwd = '" + passwd + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		rs.next(); // 처음것 가르킴
		if(rs.getInt(1)> 0){
			success = true;
			
		}
		
		
	}catch(Exception ex){
			ex.printStackTrace(); // 에러잡을때 가장 좋은 함수
		}finally{
			if(rs != null){
				try{
					rs.close();
				}catch(Exception ex1){}
			}
			if(stmt != null){
				try{
					stmt.close();
				}catch(Exception ex1){}
			}
			if(conn != null){
				try{
					conn.close();
				}catch(Exception ex1){}
			}
	}

		
		if(!success){
			%>
		
			<script>
				alert("비밀번호를 다시 입력해주세요.");
				history.go(-1);
			</script>
			<%
		}else{
			session.setAttribute("id",id);
			%>
			
			<%=id %>님 환영합니다.
	
			<script>location.href="123.jsp";</script>
		
			<%
		}
		

	%>