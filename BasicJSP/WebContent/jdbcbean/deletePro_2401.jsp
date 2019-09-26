<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body bgcolor="#ffffcc">
<div align="center">
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean_2401"/>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String pwd = request.getParameter("pwd");
	
	int result = regDbBean.selectId(id, pwd);
	int r = 0;
	String msg="";
	
	if(result == 1) {
		r = regDbBean.deleteMember(id);
		if(r == 1)
			msg = "탈퇴 완료입니다.";
		else
			msg = "탈퇴 실패입니다.";
	} else if(result == 2) {
		msg = "id 오류입니다.";
	} else if(result == 3) {
		msg = "비밀번호 오류입니다.";
	}
%>
	<div align="center"><h2><font color="#996600"><%=msg %></font></h2></div>
	<input type="button" value="뒤로가기" onClick="history.back()">
</div>
</body>
</html>