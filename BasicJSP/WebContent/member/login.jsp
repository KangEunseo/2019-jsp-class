<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function login_check(){
	var id = document.loginf.id.value;
	var pass = document.loginf.pwd.value;
	
	if(id == ""){
		alert("id를 입력하세요");
		return false;
	}
	if(pass == ""){
		alert("password를 입력하세요");
		return false;
	}
}
</script>
</head>
<body bgcolor="#ffffcc">
<% request.setCharacterEncoding("utf-8"); %>
<div align="center">
	<br><br>
	<h4>로그인</h4>
	<form name="loginf" method="post" onsubmit="return login_check();" action="loginPro.jsp">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" size="20"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="21"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="로그인">&nbsp;</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>