<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="test2" class="b06.bean.SimpleBean"/>
<jsp:setProperty name="test2" property="message" value="java Server Page"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>간단한 빈 두번째 페이지</h2>
	<br/>
	<jsp:getProperty name="test2" property="message"/>
</body>
</html>