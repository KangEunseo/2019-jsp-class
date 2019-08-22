<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학번 이름 학년 선택과목을 입력하는 폼</h2>
	<form method="post" action="requestTestPro.jsp">
		학번 <input type="text" name="num"><br>
		이름 <input type="text" name="name"><br>
		학년 <input type="radio" value="1학년 " name="grade">1학년 <input type="radio" value="2학년 " name="grade">2학년 
		   <input type="radio" value="3학년 " name="grade">3학년 <input type="radio" value="4학년 " name="grade">4학년<br>
		선택과목 
		<select name="subjects">
			<option value="JAVA">JAVA</option>
			<option value="JSP">JSP</option>
			<option value="XML">XML</option>
		</select>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>