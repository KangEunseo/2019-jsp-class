package jdbcbean;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DBConnection {
	public static Connection getConnection() throws SQLException, NamingException, ClassNotFoundException {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env"); //naming 서비스를 통해서
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mydb");	   //커넥션 풀 가져와서
		Connection conn = ds.getConnection();					   //api
		return conn;
	}
}
