<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" buffer="16kb" autoFlush="true" isThreadSafe="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer.jsp</title>
</head>
<body>
	<% Date date=new Date(); %>
	현재의 날짜와 시간은<p>
	<%= date.toLocaleString() %><p>
	Copyright ⓒ2019
</body>
</html>