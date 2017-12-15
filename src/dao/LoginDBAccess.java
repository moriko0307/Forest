package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDBAccess {

	private Connection createConnection() throws Exception {
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/KIDDA_LA",
					"root", "admin");
		} catch(ClassNotFoundException e) {
			throw new Exception("DB接続処理に失敗しました！");
		} catch(SQLException e) {
			throw new Exception("DB接続処理に失敗しました!！");
		}
		return con;
	}

	private void closeConnection(Connection con) throws Exception {
		try{
			if(con != null){
				con.close();
			}
		} catch(SQLException e) {
			throw new Exception("DB接続処理に失敗しました！");
		}
	}

	public void NewCustomer(String name, String pass) throws Exception {
		Connection con = createConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con
					.prepareStatement("insert into customer (custname,password) values ('" + name +"','" + pass + "');");
		} catch (SQLException e) {
			throw new Exception("ログイン登録処理に失敗しました！");
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		closeConnection(con);
	}
}
