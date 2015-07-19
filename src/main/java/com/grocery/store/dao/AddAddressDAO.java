package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.vo.AddressVO;

public class AddAddressDAO {

	private static final Log4jLogger LOG = Log4jLogger.getLogger(AddAddressDAO.class.getName());

	public void addAddress(AddressVO address, int userId) {

		Connection conn = null;
		try {

			conn = DbUtil.getConnection();

			if (conn != null) {
				String sqlQuery = "INSERT INTO ADDRESS"
						+ " (FIRST_LINE, SECOND_LINE, THIRD_LINE, CITY, PINCODE, STATE, USER_ID, CONTACT_NUMBER"
						+ ") VALUES (?,?,?,?,?,?,?,?)";

				PreparedStatement preparedStatement = conn.prepareStatement(sqlQuery);

				preparedStatement.setString(1, address.getFirstLine());
				preparedStatement.setString(2, address.getSecondLine());
				preparedStatement.setString(3, address.getThirdLine());
				preparedStatement.setString(4, address.getCity());
				preparedStatement.setString(5, address.getPinCode());
				preparedStatement.setString(6, address.getState());
				preparedStatement.setInt(7, userId);
				preparedStatement.setString(8, address.getContactNumber());

				preparedStatement.executeQuery();
			}

		} catch (Exception exp) {
			LOG.error("Exception in addUser method of AddUser: " + exp.getMessage());
		} finally {
			DbUtil.closeConnection(conn);
		}
	}
}
