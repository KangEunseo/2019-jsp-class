<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function member_check(){
	var id = document.memberf.id.value;
	var pwd = document.memberf.pwd.value;
	var name = document.memberf.name.value;
	var num1 = document.memberf.num1.value;
	var num2 = document.memberf.num2.value;
	
	if(id == ""){
		alert("id를 입력하세요");
		return false;
	}if(pwd == ""){
		alert("password를 입력하세요");
		return false;
	}if(name == ""){
		alert("이름을 입력하세요");
		return false;
	}if(num1 == "" || num2 ==""){
		alert("주민등록번호를 입력하세요");
		return false;
	}
}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center">
	<form name="memberf" method="post" onsubmit="return member_check();" action="memberPro.jsp">
		<table border="1" width="600px">
			<tr>
				<td width="20%" colspan="2"><b>회원 가입</b></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="15"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pwd" size="16"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="15"></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="num1" size="15"> ex)830815 - <input type="text" name="num2" size="15"> ex)1234567</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" size="15"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" size="15"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" size="15"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" size="15"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job" size="15"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="회원가입"> <input type="reset" value="다시쓰기"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>