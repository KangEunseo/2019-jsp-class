<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="jdbcbean.MemberDbBean_2401"%>
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
<%
	request.setCharacterEncoding("utf-8");
	MemberDbBean_2401 regDbBean = new MemberDbBean_2401();

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String msg = "";
	
	int result = regDbBean.selectId(id, pwd);
	if(result == 1) {
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
		
//		System.out.println("session 유효시간 : "+session.getMaxInactiveInterval()); - 결과 [session 유효시간 : 1800], 즉 30분 동안 세션이 유지된다.
%>
	<br><br>
	<table border="1" width="600px" cellspacing="0" cellpadding="5">
		<tr>
			<td colspan="3" align="center"><font color="#996600"><b>
				<%=id %>님 로그인되었습니다.
			</b></font></td>
		</tr>
		<tr>
			<td align="center"><input type="button" value="회원정보조회" onClick="javascript:location.href='retrieve.jsp'"></td>
			<td align="center"><input type="button" value="회원정보수정" onClick="javascript:location.href='update_2401.jsp'"></td>
			<td align="center"><input type="button" value="회 원 탈 퇴" onClick="javascript:location.href='delete_2401.jsp'"></td>
		</tr>
	</table>
	<p><input type="button" value="로그아웃" onClick="javascript:location.href='logoutSession.jsp'"></p>
<%
	} else if(result == 2) {
		msg = "id 오류입니다.";
	} else if(result == 3) {
		msg = "password 오류입니다.";
	}

	if(result != 1) {	%>	
		<br><br><%out.println(msg);%><br><br>
		<input type="button" value="뒤로가기" onClick="history.back()">
<%	}	%>
</div>
</body>
</html>