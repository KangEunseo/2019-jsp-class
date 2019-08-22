<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page buffer="16kb" autoFlush="true" isThreadSafe="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Example</title>
</head>
<body>
	<h2>Directive Example</h2>
	<% Date date=new Date(); %>
	현재의 날짜와 시간은<p>
	<%= date.toLocaleString() %>
</body>
</html>