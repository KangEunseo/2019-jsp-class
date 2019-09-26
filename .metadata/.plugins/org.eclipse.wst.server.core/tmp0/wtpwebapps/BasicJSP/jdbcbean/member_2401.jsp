<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
function member_check(){
	var id = document.memberf.id.value;
	var pwd = document.memberf.pwd.value;
	var checkPwd = document.memberf.checkPwd.value;
	var name = document.memberf.name.value;
	var num1 = document.memberf.num1.value;
	var num2 = document.memberf.num2.value;
	
	if(id == ""){
		alert("id를 입력하세요.");
		return false;
	} if(pwd == ""){
		alert("password를 입력하세요.");
		return false;
	} if(checkPwd == ""){
		alert("password를 확인하세요.");
		return false;
	} if(pwd != checkPwd){
		alert("password 확인이 일치하지 않습니다. 다시 입력하세요.");
		return false;
	} if(name == ""){
		alert("이름을 입력하세요.");
		return false;
	} if(num1 == "" || num2 ==""){
		alert("주민등록번호를 입력하세요.");
		return false;
	}
}
</script>
</head>
<body bgcolor="#ffffcc">
<% 	request.setCharacterEncoding("utf-8"); %>
<div align="center">
	<form name="memberf" method="post" onsubmit="return member_check();" action="memberPro_2401.jsp">
		<table border="1" width="600px" cellspacing="0" cellpadding="5">
			<tr>
				<td colspan="3" width="20%">
					<div align="center">
					  	<font color="#996600"><b>회원 가입</b></font>
					</div>
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="15"></td>
				<td><font color="#FF8000">아이디</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pwd" size="16"></td>
				<td><font color="#FF8000">패스워드</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" name="checkPwd" size="16"></td>
				<td><font color="#FF8000">패스워드</font>를 확인합니다.</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="15"></td>
				<td><font color="#FF8000">고객실명</font>을 적어주세요.</td>
			</tr>
			<tr>
				<td>주민번호1</td>
				<td><input type="text" name="num1" size="15"> ex)030216</td>
				<td><font color="#FF8000">주민번호 앞자리</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>주민번호2</td>
				<td><input type="text" name="num2" size="15"> ex)1234567</td>
				<td><font color="#FF8000">주민번호 뒷자리</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="15"></td>
				<td><font color="#FF8000">이메일</font>을 적어주세요.</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" size="15"></td>
				<td><font color="#FF8000">전화번호</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" size="15"></td>
				<td><font color="#FF8000">우편번호</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" size="15"></td>
				<td><font color="#FF8000">주소</font>를 적어주세요.</td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job" size="15"></td>
				<td><font color="#FF8000">직업</font>을 적어주세요.</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="회원가입">&nbsp; &nbsp;
					<input type="reset" value="다시쓰기">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>