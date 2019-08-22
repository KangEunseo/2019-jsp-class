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
<center>
	<h4>로그인</h4>
	<form name="loginf" method="post" onsubmit="return login_check();" action="loginPro_2401.jsp">
		아이디&nbsp;&nbsp;&nbsp;<input type="text" name="id"><br><br>
		비밀번호&nbsp;<input type="password" name="pwd"><br><br>
		<input type="submit" value="로그인"> <input type="button" value="회원가입" onClick="javascript:location.href='member_2401.jsp'">
	</form>
</center>
</body>
</html>