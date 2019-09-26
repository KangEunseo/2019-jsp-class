package jdbcbean;

import java.sql.*;

public class MemberDbBean_2401 {
	
	private final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	private final String USER = "root";
	private final String PASS = "mirim2";
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	
	public MemberDbBean_2401() { //드라이버 로딩
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	}
	
	public void insertMember(MemberBean_2401 member) {
		try {
			sql = "insert into tblregister values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getNum1());
			pstmt.setString(5, member.getNum2());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getZipcode());
			pstmt.setString(9, member.getAddress());
			pstmt.setString(10, member.getJob());
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public MemberBean_2401 selectMember(String id) {
		MemberBean_2401 member = new MemberBean_2401();
		try {
			sql = "select * from tblregister where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setNum1(rs.getString("num1"));
				member.setNum2(rs.getString("num2"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress(rs.getString("address"));
				member.setJob(rs.getString("job"));
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return member;
	}
	
	public void updateMember(MemberBean_2401 member) {
		try {
			sql = "update tblregister set email = ?, phone = ?, zipcode = ?, address = ?, job = ?"
					+ "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getZipcode());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getJob());
			pstmt.setString(6, member.getId());
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public int selectId(String inId, String inPwd) {
		int result = 1;
		String id = "";
		String pwd = "";
		
		try{
			sql = "select id, pwd from tblregister where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inId);		
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				id=rs.getString("id");
				pwd=rs.getString("pwd");
				
				if(pwd.equals(inPwd))
					result = 1; //성공
				else
					result = 3; //pwd 오류
			} else {
				result = 2; //id 오류
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteMember(String id) {
		int result = 0;
		try {
			sql = "delete from tblregister where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			result = 1;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public void freeConn() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}