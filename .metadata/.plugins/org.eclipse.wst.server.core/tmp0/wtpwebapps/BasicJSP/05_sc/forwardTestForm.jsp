<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward 액션태그</h2>
	<form method="post" action="forwardTest.jsp">
		아이디 <input type="text" name="id"><p>
		취미 
		<select name="hobby">
			<option value="WOW" selected>WOW
			<option value="만화보기">만화보기
			<option value="오버워치">오버워치
		</select><p>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>