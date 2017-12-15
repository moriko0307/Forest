/**
 * クラス名：	CustomerSearchDBAccess
 * 概要　　：	顧客情報検索DAO
 * 作成者名：
 * 作成日　：
 * 修正者名：
 * 修正日　：
 */

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CustomerSearchDBAccess {

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
			throw new Exception("DB接void続処理に失敗しました！!!");
		}
	}

	public void Login(String name, String pass) throws Exception{

	}
}
