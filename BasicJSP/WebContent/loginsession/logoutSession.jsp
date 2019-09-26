<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<div align="center">
<%
	session.invalidate();
%>
	<br><br>로그아웃 되었습니다.<br><br>
	<form method="post" action="retrieve.jsp">
		<input type="submit" value="회원정보 조회">
	</form>

<!-- 
<script>
	alert("로그아웃 되었습니다.");
	location.href="loginSession.jsp";
</script> -->
</div>
</body>
</html>