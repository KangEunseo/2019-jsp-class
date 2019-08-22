<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="ffffcc">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPass = "mirim2";
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String sql = "select id, pwd from tblregister where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rPwd = rs.getString("pwd");
			if(id.equals(rId) && pwd.equals(rPwd)){
				session.setAttribute("id", id);
				session.setAttribute("pwd", pwd);
				id=(String)session.getAttribute("id");
%>
				<center>
					<h3><%=id %>님, 로그인 완료입니다.</h3>
					<form action="update_2401.jsp" method="post">
						<input type="submit" value="회원정보수정">
					</form><p>
					<form action="delete_2401.jsp" method="post">
						<input type="submit" value="회원 탈퇴">
					</form>
				</center>
<%
			} else{
				%>
				<center><h3>비밀번호가 틀렸습니다.</h3></center>
				<%
			}
		} else{
			%>
			<center><h3>아이디가 틀렸습니다.</h3></center>
			<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		if(pstmt != null){
			try{ pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{ conn.close();
			} catch(SQLException sqle){}
		}
	}
%>
</body>
</html>