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
<jsp:useBean id="regBean" class="jdbcbean.MemberBean_2401"/>
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean_2401"/>
<% regBean = regDbBean.selectMember(id); %>
	<div align="center">
		<br><br>
		<form method="post" action="updatePro_2401.jsp">
			<table border="1" width="600px">
				<tr>
					<td colspan="2"><b>회원 정보 수정</b></td>
				</tr>
				<tr>
					<td width="20%">아이디</td>
					<td width="50%"><%=regBean.getId()%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td width="50%"><%=regBean.getName()%></td>
				</tr>
				<tr>
					<td>주민등록번호</td>
					<td width="50%"><%=regBean.getNum1()%> - <%=regBean.getNum2()%></td>
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
					<td>우편번호</td>
					<td width="50%"><%=regBean.getZipcode()%></td>
				</tr>
				<tr>
					<td>주소</td>
					<td width="50%"><%=regBean.getAddress()%></td>
				</tr>
				<tr>
					<td>직업</td>
					<td width="50%"><%=regBean.getJob()%></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="뒤로 가기" onClick="history.back()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>