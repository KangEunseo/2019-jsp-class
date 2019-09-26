<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	request.setCharacterEncoding("utf-8");
%>
<title></title>
</head>
<body bgcolor= "#ffffcc">
<jsp:useBean id="regBean" class="jdbcbean.MemberBean_2401"/>
<jsp:setProperty name="regBean" property="*"/>
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean_2401"/>

<%
	regDbBean.insertMember(regBean);
%>
<form name="regForm" method="post" action="update_2401.jsp">
	<table width="600px" border="1" align="center" cellspacing="0" cellpadding="5">
		<tr align="center">
			<td colspan="2"><font color="#996600"><b>
					<jsp:getProperty name="regBean" property="name"/> 회원님의 가입을 축하합니다.
			</b></font></td>
		</tr>
		<tr>
			<td width="24%">아이디</td>
			<td width="41%"><jsp:getProperty name="regBean" property="id"/></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><jsp:getProperty name="regBean" property="pwd"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="regBean" property="name"/></td>
		</tr>
		<tr>
			<td>주민번호1</td>
		    <td><jsp:getProperty name="regBean" property="num1"/></td>
		</tr>
		<tr>
			<td>주민번호2</td>
		    <td><jsp:getProperty name="regBean" property="num2"/></td>
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
			<td>주소</td>
			<td><jsp:getProperty name="regBean" property="address"/></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><jsp:getProperty name="regBean" property="job"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="회원 정보 수정">
			</td>
		</tr>
	</table>
	<input type="hidden" name="id" value="<jsp:getProperty name="regBean" property="id"/>">
</form>
</body>
</html>