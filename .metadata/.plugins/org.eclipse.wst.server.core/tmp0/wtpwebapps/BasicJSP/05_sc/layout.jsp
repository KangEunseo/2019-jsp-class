<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="400">
		<tr>
			<td colspan="2"><jsp:include page="top.jsp" flush="false"/></td>
		</tr>
		<tr height="100">
			<td width="100" valign="top"><jsp:include page="left.jsp" flush="false"/></td>
			<td><center>레이아웃</center></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="bottom.jsp" flush="false"/></td>
		</tr>
	</table>
</body>
</html>