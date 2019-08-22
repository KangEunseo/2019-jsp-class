<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<jsp:useBean id="test" class="jdbcbean.MemberBean"/>
<jsp:setProperty name="test" property="*"/>
<jsp:useBean id="testDB" class="jdbcbean.MemberDbBean"/>

<%
	testDB.insertMember(test);
%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor= "#ffffcc">
<div align="center">
<!--<form name="testForm" method="post" action="memberUpdate.jsp"> -->
	<table width="600" border=1>
		<tr>
			<td colspan=2>
				<div align="center">
				  <font color="996600"><b>
					<jsp:getProperty name="test" property="name"/> 회원님이 작성하신 내용입니다. 확인해주세요.
				  </b></font>
				</div>
			</td>
		</tr>
		<tr>
			<td width= "20%">아이디</td>
			<td>
				<jsp:getProperty name="test" property="id"/>
			</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>
				<jsp:getProperty name="test" property="pwd"/>
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<jsp:getProperty name="test" property="name"/>
			</td>
		</tr>
		<tr>
			<td>주민등록번호</td>
		    <td>
		    	<jsp:getProperty name="test" property="num1"/> - <jsp:getProperty name="test" property="num2"/> 
		    </td>
		</tr>
		<tr>
		  	<td>Email</td>
		  	<td>
		  		<jsp:getProperty name="test" property="email"/>
		  	</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>
				 <jsp:getProperty name="test" property="phone"/>
			</td>
		</tr>
		<tr>
			<td>우편번호</td>
		  	<td>
		  		<jsp:getProperty name="test" property="zipcode"/>
		  	</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<jsp:getProperty name="test" property="address"/>
			</td>
		</tr>
		<tr>
			<td>직업</td>
			<td>
				<jsp:getProperty name="test" property="job"/>
			</td>
		</tr>
		<tr>
			<td colspan= 2>
			  <div align="center">
				<input type="submit" value="회원정보 수정">
			  </div>
			</td>
		</tr>
	</table>
<!--</form>-->
</div>
</body>
</html>