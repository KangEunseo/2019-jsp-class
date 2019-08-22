<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forwardTest2.jsp 입니다.</h2>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id="찌훙";
		String hobby="phone";
	%>
	
	<jsp:forward page="forwardToTest3.jsp">
		<jsp:param name="id" value="<%=id %>"/>
		<jsp:param name="hobby" value="<%=hobby %>"/>
	</jsp:forward>
</body>
</html>