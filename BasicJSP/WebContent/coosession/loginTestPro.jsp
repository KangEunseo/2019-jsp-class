<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("id", id);
	session.setAttribute("pwd", pwd);
%>
	id와 passwd 세션 속성 설정하였습니다.<br>
	id 속성 값은 <%=(String)session.getAttribute("id") %>이고<br>
	passwd 속성 값은 <%=(String)session.getAttribute("pwd") %>입니다.
</body>
</html>