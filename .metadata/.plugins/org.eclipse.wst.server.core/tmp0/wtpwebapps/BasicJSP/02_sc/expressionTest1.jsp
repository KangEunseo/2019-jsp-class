<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] str={"jsp", "JAVA", "Android", "HTML5"};
		int i=(int)(Math.random()*4); //0~3
	%>
	<%=str[i] %>가(이) 재미있다.
</body>
</html>