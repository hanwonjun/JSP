<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="ch13.MemberMgr"%>

<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	session.setAttribute("id", id);
	session.setAttribute("passwd", passwd);

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	boolean success = false;
	String DB_url = "jdbc:mysql://localhost:3307/mydb?useUnicode=true&characterEncoding=UTF-8";

	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection(DB_url, "root", "seoil"); // connection 생성
		String sql = "select count(*) from member where id='" + id + "' and passwd='" + passwd + "'";

		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		rs.next();

		if (rs.getInt(1) > 0) {
			success = true;
		}
	} catch (Exception ex) {
		ex.printStackTrace();
	} finally {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception ex1) {
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception ex1) {
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception ex1) {
			}
		}
	}
	if (!success) {
%>
<script>
	alert("아이디 또는 비밀번호가 다릅니다.");
	history.go(-1);
</script>
<%
	} else {
%>
<script>
	alert("로그인 됬습니다.");
	location.href = "index.jsp";
</script>
<%
	}
%>



