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
<% request.setCharacterEncoding("utf-8"); %>
<div align="center">
	<h3>비밀번호 확인</h3>
	<form method="post" action="deletePro_2401.jsp">
		비밀번호 입력 <input type="password" name="pwd"><br><br>
		<input type="submit" value="회원탈퇴">
	</form>
</div>
</body>
</html>