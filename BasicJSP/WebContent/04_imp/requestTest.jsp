<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
		out.println("요청에 사용된 요청방식(GET, POST, PUT) 반환 : "+request.getMethod()+"<br>"); //String, default=get
		out.println("요청에 사용된 URL로부터 URI 반환 : "+request.getRequestURI()+"<br>"); //String
		out.println("요청에 사용된 Query 문장 반환 : "+request.getQueryString()+"<br>"); //String
		out.println("클라이언트의 호스트 이름 반환 : "+request.getRemoteHost()+"<br>"); //String
		out.println("클라이언트의 주소 반환 : "+request.getRemoteAddr()+"<br>"); //String
		out.println("사용중인 프로토콜 반환 : "+request.getProtocol()+"<br>"); //String
		out.println("서버의 도메인 이름 반환 : "+request.getServerName()+"<br>"); //String
		out.println("서버의 주소 반환 : "+request.getServerPort()+"<br>"); //int
		out.println("해당 JSP페이지가 속한 웹 어플리케이션 컨텍스트 경로 반환 : "+request.getContextPath()+"<br>"); //String
		out.println("웹서버로 요청시 HTTP 헤더에 있는 모든 헤더이름 리턴 : "+request.getHeaderNames()); //Enumeration
	%>
</body>
</html>