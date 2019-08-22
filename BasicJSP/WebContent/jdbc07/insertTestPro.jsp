<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str="";
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPass = "mirim2";
		
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String sql = "insert into tblregister(id, pwd, name) values(?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		
		str = "새로운 레코드 추가 완료";
	} catch(Exception e){
		e.printStackTrace();
		str = "새로운 레코드 추가 실패";
	} finally{
		if(pstmt != null){
			try{ pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{ pstmt.close();
			} catch(SQLException sqle){}
		}
	}
%>
<%= str %>
<form method="post" action="useDB.jsp">
	<input type="submit" value="테이블 확인">
</form>
</body>
</html>