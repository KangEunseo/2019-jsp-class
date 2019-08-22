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
	<jsp:useBean id="testfav" class="b06.bean.FavoriteBean">
		<jsp:setProperty property="*" name="testfav"/>
	</jsp:useBean>
	당신이 좋아하는 색깔은 <jsp:getProperty name="testfav" property="color"/>입니다.<br>
	당신이 좋아하는 꽃은 <jsp:getProperty name="testfav" property="flower"/>입니다.<br>
	당신이 좋아하는 음악은 <jsp:getProperty name="testfav" property="music"/>입니다.
</body>
</html>