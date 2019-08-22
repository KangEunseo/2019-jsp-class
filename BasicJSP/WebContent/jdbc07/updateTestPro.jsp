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
	ResultSet rs = null;
	String str="";
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
				sql = "update tblregister set name=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
%>
				레코드를 수정했습니다.
<%
			} else
				out.println("패스워드가 틀렸습니다.");
		} else
			out.println("아이디가 틀렸습니다.");
	} catch(Exception e){
		e.printStackTrace();
		str = "레코드 추가를 실패했습니다.";
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
<%=str %>
<form action="useDB.jsp" method="post">
	<input type="submit" value="디비 확인">
</form>
</body>
</html>