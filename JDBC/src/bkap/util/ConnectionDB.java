package bkap.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

	private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=JW2010_LM";
	private static final String USER = "sa";
	private static final String PASS = "tom18102001";
	
	//Phương thức khởi tạo đối tượng kết nối với SQL
	public static Connection openConnection() {
		Connection conn = null;
		try {
			//set Driver
			Class.forName(DRIVER);
			//Khởi tạo đối tượng conn từ DriverManager
			conn = DriverManager.getConnection(URL, USER, PASS);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
	//Phương thức đóng kết nối với SQL
	public static void closeConnection(Connection conn, CallableStatement callSt) {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		else {
			try {
				callSt.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		try {
			Connection conn = ConnectionDB.openConnection();
			System.out.println("Thành công");
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("Thất bại");
		}
	}
}
