<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="memberPro.jsp">
	<table border="1" width="600">
		<tr>
			<td colspan="3" align="center">회원 가입</td>
		</tr>
		<tr>
			<td width="130">아이디</td>
			<td><input type="text" name="id"></td>
			<td>아이디를 적어 주세요.</td>
		</tr>
		<tr>
			<td width="130">패스워드</td>
			<td><input type="text" name="pw"></td>
			<td>패스워드를 적어 주세요.</td>
		</tr>
		<tr>
			<td width="130">패스워드 확인</td>
			<td><input type="text" name="rpw"></td>
			<td>패스워드를 확인합니다.</td>
		</tr>
		<tr>
			<td width="130">이름</td>
			<td><input type="text" name="name"></td>
			<td>고객실명을 적어 주세요.</td>
		</tr>
		<tr>
			<td width="130">생년월일</td>
			<td><input type="text" name="birth"></td>
			<td>생년월일을 적어 주세요.</td>
		</tr>
		<tr>
			<td width="130">이메일</td>
			<td><input type="text" name="email"></td>
			<td>이메일을 적어 주세요.</td>
		</tr>
		<tr>
			<td colspan="3" align="center"><input type="submit" value="회원가입">  
			<input type="reset" value="다시쓰기"></td>
		</tr>
	</table>
	</form>
</body>
</html>