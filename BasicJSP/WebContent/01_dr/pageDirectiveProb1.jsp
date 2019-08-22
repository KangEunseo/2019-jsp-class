<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.Timestamp" import="java.text.SimpleDateFormat" info="미림여자정보과학고등학교 강은서"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=getServletInfo() %><p>
	<%
		Timestamp now=new Timestamp(System.currentTimeMillis());
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String strdate=format.format(now);
	%>
	오늘 날짜는 <%=strdate %> 입니다.
</body>
</html>