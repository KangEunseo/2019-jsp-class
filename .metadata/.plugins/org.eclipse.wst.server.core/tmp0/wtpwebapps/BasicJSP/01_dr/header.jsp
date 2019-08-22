<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
</head>
<body>
	<%!
		int count=0;
		void addCount(){
			count++;
		}
	%>
	
	<% addCount(); %>
	
	이 페이지 방문횟수는 <%=count %>번입니다.
</body>
</html>