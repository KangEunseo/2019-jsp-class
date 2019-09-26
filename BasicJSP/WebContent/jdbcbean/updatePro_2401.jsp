<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 완료</title>
<% request.setCharacterEncoding("utf-8"); %>
</head>
<jsp:useBean id="regBean" class="jdbcbean.MemberBean_2401"/>
<jsp:setProperty name="regBean" property="id"/>
<jsp:setProperty name="regBean" property="name"/>
<jsp:setProperty name="regBean" property="num1"/>
<jsp:setProperty name="regBean" property="num2"/>
<jsp:setProperty name="regBean" property="email"/>
<jsp:setProperty name="regBean" property="phone"/>
<jsp:setProperty name="regBean" property="zipcode"/>
<jsp:setProperty name="regBean" property="address"/>
<jsp:setProperty name="regBean" property="job"/>
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean_2401"/>
<%
	regDbBean.updateMember(regBean);
%>
<body bgcolor="#ffffcc">
	<table border="1" width="600px" align="center" cellspacing="0" cellpadding="5">
		<tr align="center">
			<td colspan="2" align="center">
				<font color="#996600"><b>
					<jsp:getProperty name="regBean" property="name"/> 회원님의 정보가 수정되었습니다.
				</b></font>
			</td>
		</tr>
		<tr>
			<td width="20%">구분</td>
			<td width="60%">수정자료</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty name="regBean" property="email"/></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><jsp:getProperty name="regBean" property="phone"/></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><jsp:getProperty name="regBean" property="zipcode"/></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><jsp:getProperty name="regBean" property="job"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="뒤로가기" onClick="history.back()">
			</td>
		</tr>
	</table>
</body>
</html>