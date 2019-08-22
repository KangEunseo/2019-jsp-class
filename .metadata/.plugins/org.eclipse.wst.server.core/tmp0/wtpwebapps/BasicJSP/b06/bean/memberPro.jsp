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
	<jsp:useBean id="memberBean" class="b06.bean.MemberBean">
		<jsp:setProperty property="*" name="memberBean"/>
	</jsp:useBean>
	<table border=1>
		<tr>
			<td colspan="2" align="center"><jsp:getProperty property="name" name="memberBean"/>
			회원님이 작성하신 내용입니다. 확인해주세요.</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="memberBean"/></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><jsp:getProperty property="pw" name="memberBean"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="memberBean"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><jsp:getProperty property="birth" name="memberBean"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="memberBean"/></td>
		</tr>
	</table>
</body>
</html>