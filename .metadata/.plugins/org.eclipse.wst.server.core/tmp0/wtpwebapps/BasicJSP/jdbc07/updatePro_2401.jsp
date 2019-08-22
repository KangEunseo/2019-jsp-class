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
<% 
	request.setCharacterEncoding("utf-8"); 
	
	String id = (String)session.getAttribute("id");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	String s="";
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPass = "mirim2";
		Class.forName("org.gjt.mm.mysql.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String sql = "update tblregister set email=?, phone=?, zipcode=?, address=?, job=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, phone);
		pstmt.setString(3, zipcode);
		pstmt.setString(4, address);
		pstmt.setString(5, job);
		pstmt.setString(6, id);
		pstmt.executeUpdate();
		str = id+" 수정완료입니다.";
		s="success";
	} catch(Exception e){
		e.printStackTrace();
		str = id+" 수정실패입니다.";
		s="fail";
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
<form method="post" action="update_2401.jsp">
<div align="center">
	<h3><%=str %></h3>
<%	if(s.equals("success")){ %>
		<input type="submit" value="회원정보 조회">
<%	} %>	
</div>
</form>
</body>
</html>