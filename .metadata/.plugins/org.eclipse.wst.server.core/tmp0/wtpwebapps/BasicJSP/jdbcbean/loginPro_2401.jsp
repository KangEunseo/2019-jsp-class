<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="ffffcc">
<div align="center">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean_2401"/>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	int result = regDbBean.selectId(id, pwd);
	if(result == 1) {
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
%>
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
<%
	} else if(result == 2) {
		out.println("id 오류입니다.");
	} else if(result == 3) {
		out.println("password 오류입니다.");
	}
%>
</div>
</body>
</html>