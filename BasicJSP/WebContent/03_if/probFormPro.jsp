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
		String name=request.getParameter("성명");
		int student_num=Integer.parseInt(request.getParameter("학번"));
		int hg=Integer.parseInt(request.getParameter("학과"));
		if(hg==1)
			out.println(name+"은 디자인과 학번은 "+student_num+"입니다.");
		else if(hg==2)
			out.println(name+"은 뉴미디어솔루션과 학번은 "+student_num+"입니다.");
		else if(hg==3)
			out.println(name+"은 SW과 학번은 "+student_num+"입니다.");
		else
			out.println("과를 잘못 선택하셨습니다. 처음 페이지부터 다시 실행해주세요.");
	%>
</body>
</html>