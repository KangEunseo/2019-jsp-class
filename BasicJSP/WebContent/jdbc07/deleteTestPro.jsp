<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String str = "";
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
			if(id.equals(rId) && pwd.equals(rPwd)){ //여러개 삭제할 때는 if가 아니라 while문
				sql = "delete from tblregister where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				str = "데이터가 제거 되었습니다.";
			} else
				out.println("패스워드가 틀렸습니다.");
		} else
			out.println("아이디가 틀렸습니다");
	} catch(Exception e){
		e.printStackTrace();
		str = "데이터가 제거 되지 않았습니다.";
	} finally{
		if(pstmt != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{
				conn.close();
			} catch(SQLException sqle){}
		}
	}
%>
<div align="center"><%=str %></div>
</body>
</html>