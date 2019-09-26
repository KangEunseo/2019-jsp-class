<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		if(id == null) {
			id = (String)session.getAttribute("id");
		}
	%>
</head>
<body bgcolor="#ffffcc">
<jsp:useBean id="regBean" class="member.Member"/>
<jsp:useBean id="regDbBean" class="member.MemberDb"/>
<% regBean = regDbBean.selectMember(id); %>
	<div align="center">
		<br><br>
			<table border="1" width="600px">
			<tr>
				<td colspan="2"><b>회원 정보 조회</b></td>
			</tr>
			<tr>
				<td width="20%">아이디</td>
				<td width="50%"><%=regBean.getId()%></td>
			</tr>
			<tr>
				<td>password</td>
				<td width="50%"><%=regBean.getPwd()%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td width="50%"><%=regBean.getEmail()%></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td width="50%"><%=regBean.getPhone()%></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="뒤로 가기" onClick="history.back()">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>