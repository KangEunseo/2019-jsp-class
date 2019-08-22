<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

		String id=(String)session.getAttribute("idKey");
		String season=request.getParameter("season");
		String fruit=request.getParameter("fruit");
		String sessionId=session.getId();
		int intervalTime=session.getMaxInactiveInterval();

		if(id != null){
	%>
			<h1>Session Example1</h1>
			<%=id%>님이 좋아하시는 계절과 과일은<p>
			<%=season%>과 <%=fruit%>입니다.<p>
			세션 ID : <%=sessionId%><p>
			세션 유지 시간 : <%=intervalTime%>초
	<%
			session.invalidate();
		}else{
			out.println("세션의 시간이 경과하였거나 다른 이유로 연결이 불가능합니다.");
		}
	%>
</body>
</html>