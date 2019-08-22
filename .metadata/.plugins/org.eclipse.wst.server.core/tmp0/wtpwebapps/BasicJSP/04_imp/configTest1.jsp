<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration<String> en=config.getInitParameterNames();
		String name="";
		String value="";

		while(en.hasMoreElements()){
			name=en.nextElement();
			value=config.getInitParameter(name);
			out.println(name+" : "+value+"\n");
		}

		String servletName=config.getServletName();
		ServletContext sc=config.getServletContext();
		out.println(servletName+" : "+sc);
	%>
</body>
</html>