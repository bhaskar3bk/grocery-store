package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {

	private static final String DATA_BASE_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String DB_USERNAME = "System";
	private static final String DB_PASSWORD = "System";

	private static final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";

	protected static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(JDBC_DRIVER);
			connection = DriverManager.getConnection(DATA_BASE_URL,
					DB_USERNAME, DB_PASSWORD);

		} catch (SQLException sqlExp) {
			System.out.println(sqlExp.getMessage());
		} catch (ClassNotFoundException cnfExp) {
			System.out.println(cnfExp.getMessage());
		} catch (Exception exp) {
			System.out.println(exp.getMessage());
		}

		return connection;
	}

	protected static void closeConnection(Connection connection) {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch (Exception exp) {
			System.out.println(exp.getMessage());
		}
	}
}
