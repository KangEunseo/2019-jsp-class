<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@page import="jdbcbean.MemberDbBean_2401" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body bgcolor="ffffcc">
<div align="center">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	MemberDbBean_2401 regDbBean = new MemberDbBean_2401();
	int result = regDbBean.selectId(id, pwd);
	String msg="";
	
	if(result == 1) {
		Cookie cookie1 = new Cookie("id", id);
		cookie1.setMaxAge(60*2);
		response.addCookie(cookie1);
		Cookie cookie2 = new Cookie("pwd", pwd);
		cookie2.setMaxAge(60*2);
		response.addCookie(cookie2);
		response.sendRedirect("loginCookieMain.jsp");
	} else if(result == 2) {
		msg = "id 오류입니다.";
	} else if(result == 3) {
		msg = "password 오류입니다.";
	}
	
	if(result != 1) { %>
		<h2><%=msg %></h2>
		<input type="button" value="뒤로 가기" onClick="history.back()">
<%	} %>
</div>
</body>
</html>