<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String str = "";
	String s = "";
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPass = "mirim2";
		
		Class.forName("org.gjt.mm.mysql.Driver"); //다른 소프트웨어랑 통신하기 위해서 mysql 드라이버를 메모리에 올려줌, 드라이버 로딩하는 작업
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass); //드라이버 매니저 생성
		String sql = "insert into tblregister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; //모든 컬럼을 넣을 때는 생략 가능
		pstmt = conn.prepareStatement(sql); //쿼리 전송, 스트링을 prepareStatement로 감싸야 보낼 수 있다
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, num1);
		pstmt.setString(5, num2);
		pstmt.setString(6, email);
		pstmt.setString(7, phone);
		pstmt.setString(8, zipcode);
		pstmt.setString(9, address);
		pstmt.setString(10, job);
		pstmt.executeUpdate();
		
		str = "회원가입 완료되었습니다.";
		s = "success"; //성공시 finally로 넘어감
	} catch(Exception e){
		e.printStackTrace();
		str = "회원가입 실패";
		s = "fail"; //실패시 finally로 넘어감
	} finally{
		if(pstmt != null){
			try{ pstmt.close(); //다른 데이터랑 엉키면 안되니까 종료해준다
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{ conn.close(); //다른 데이터랑 엉키면 안되니까 종료해준다
			} catch(SQLException sqle){}
		}
		//드라이버 매니저는 사용을 안 하면 자동으로 가비지 컬렉션으로 이동
	}
%>
<form method="post" action="login_2401.jsp">
<div align="center">
	<h3><%=str %></h3>
<%	if(s.equals("success")){ %>
		<input type="submit" value="로그인하기">
<%	} %>	
</div>
</form>
</body>
</html>