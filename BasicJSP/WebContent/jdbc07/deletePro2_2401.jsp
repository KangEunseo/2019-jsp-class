<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<div align="center">
<% 
	request.setCharacterEncoding("utf-8"); 
	String id = (String)session.getAttribute("id");
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
		String sql = "select pwd from tblregister where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rPwd = rs.getString("pwd");
			if(pwd.equals(rPwd)){
				sql = "delete from tblregister where pwd=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pwd);
				pstmt.executeUpdate();
				str = "회원 탈퇴 완료입니다.";
			}
			else{
				str = "회원 탈퇴 실패입니다.";
			}
		}
		else{
			str = "회원 탈퇴 실패입니다";
		}
	} catch(Exception e){
		e.printStackTrace();
		str = "회원 탈퇴 실패입니다.";
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
</div>
</body>
</html>