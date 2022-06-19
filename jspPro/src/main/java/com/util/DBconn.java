package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Yoo
 * @date 2022. 5. 3. - 오전 11:40:33
 * @subject
 * @content
 */
public class DBconn {

	private static Connection connection = null;

	private DBconn() {}

	public static Connection getConnection() {

		if ( connection == null ) {

			String className = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "SCOTT";
			String password = "tiger";

			try {
				Class.forName(className);

				connection = DriverManager.getConnection(url, user , password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}// if

		return connection;

	} // getConnection

	// 오버로딩
	public static Connection getConnection(String url, String user, String password) {

		if ( connection == null ) {

			String className = "oracle.jdbc.driver.OracleDriver";


			try {
				Class.forName(className);

				connection = DriverManager.getConnection(url, user , password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}// if

		return connection;

	} // getConnection

	public static void close () {

		try {
			if ( connection != null && connection.isClosed()) {
				connection.close();
			} // if

		} catch (SQLException e) {
			e.printStackTrace();
		} // try

		// *****
		connection = null;
	}

} // class
