package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;

public class AddCustomersProduct {

	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(AddCustomersProduct.class.getName());
	
	public boolean addCustomerButtonOrder(final String customerId, final String productId) {
		
		boolean productAdded = false;
		Connection conn = null;
		try {
			
			conn = DbUtil.getConnection();
			
			if (conn != null) {
				String sqlQuery = "INSERT INTO " + GC.TABLE_CUSTOMER_PRODUCT + " ("
						+ GC.DB_CUSTOMER_ID + "," + GC.DB_PRODUCT_ID + ") VALUES (?,?)";
				
				PreparedStatement preparedStatement = conn.prepareStatement(sqlQuery);
				
				preparedStatement.setString(1, customerId);
				preparedStatement.setString(2, productId);
				
				preparedStatement.executeQuery();
				productAdded = true;
			}
			
		} catch (Exception exp) {
			LOG.error("Exception in addCustomerButtonOrder method of AddCustomersProduct: " + exp);
		} finally {
			DbUtil.closeConnection(conn);
		}
		
		return productAdded;
	}
}
