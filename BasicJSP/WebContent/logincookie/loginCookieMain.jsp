<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ page import="jdbcbean.MemberDbBean_2401" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 완료</title>
</head>
<body bgcolor="ffffcc">
<div align="center">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%	String id = "", pwd = "";
	MemberDbBean_2401 regDbBean = new MemberDbBean_2401();

	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("id"))
				id = cookies[i].getValue();
			else if(cookies[i].getName().equals("pwd"))
				pwd = cookies[i].getValue();
		}
	} %>
		<table border="1" width="600px" cellspacing="0" cellpadding="5">
			<tr>
				<td colspan="3" align="center"><font color="#996600"><b>
					<%=id %>님 로그인되었습니다.
				</b></font></td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="회원정보조회" onClick="javascript:location.href='ret_2401.jsp'"></td>
				<td align="center"><input type="button" value="회원정보수정" onClick="javascript:location.href='update_2401.jsp'"></td>
				<td align="center"><input type="button" value="회 원 탈 퇴" onClick="javascript:location.href='delete_2401.jsp'"></td>
			</tr>
		</table>
		<p><input type="button" value="로그아웃" onClick="javascript:location.href='logoutCookie.jsp'"></p>
</div>
</body>
</html>