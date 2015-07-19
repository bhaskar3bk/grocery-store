package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.vo.MainProductTableVO;

public class ReadMainProductTable {
	
	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(ReadMainProductTable.class.getName());

	public List<MainProductTableVO> getProductTableList() {

		List<MainProductTableVO> productTableList = new LinkedList<MainProductTableVO>();
		Connection conn = null;

		String sqlQuery = "SELECT * FROM " + GC.MAIN_PRODUCT_TABLE;

		try {
			conn = DbUtil.getConnection();

			if (conn != null) {
				PreparedStatement preparedStatement = conn
						.prepareStatement(sqlQuery);

				if (preparedStatement != null) {
					ResultSet resultSet = preparedStatement.executeQuery();

					if (resultSet != null) {
						while (resultSet.next()) {
							
							MainProductTableVO singleProduct = new MainProductTableVO();

							singleProduct.setMainId(resultSet.getString(GC.PRODUCT_MAIN_ID));
							singleProduct.setName(resultSet.getString(GC.PRODUCT_NAME));
							singleProduct.setCompany(resultSet.getString(GC.PRODUCT_COMPANY));
							singleProduct.setCategory(resultSet.getString(GC.PRODUCT_CATEGORY));
							singleProduct.setSubCategory(resultSet.getString(GC.PRODUCT_SUB_CATEGORY));
							singleProduct.setDescription(resultSet.getString(GC.PRODUCT_DESCRIPTION));
							singleProduct.setDetailDescription(resultSet.getString(GC.PRODUCT_DETAIL_DESCRIPTION));
							singleProduct.setThumbnailImage(resultSet.getString(GC.PRODUCT_THUMBNAIL_IMAGE));
							singleProduct.setDetailImages(resultSet.getString(GC.PRODUCT_DETAIL_IMAGES));
							singleProduct.setDisplayStartDate(resultSet.getString(GC.PRODUCT_DISPLAY_START_DATE));
							singleProduct.setDisplayEndDate(resultSet.getString(GC.PRODUCT_DISPLAY_END_DATE));
							singleProduct.setBookingStartDate(resultSet.getString(GC.PRODUCT_BOOKING_START_DATE));
							singleProduct.setBookingEndDate(resultSet.getString(GC.PRODUCT_BOOKING_END_DATE));
							singleProduct.setInventoryUnit(resultSet.getString(GC.PRODUCT_INVENTORY_UNIT));
							singleProduct.setMinimumPurchage(resultSet.getString(GC.PRODUCT_MINIMUM_PURCHASE));

							productTableList.add(singleProduct);
						}
					} else {
						LOG.error("HC- resultSet is NULL in getProductTableList");
					}
				} else {
					LOG.error("HC- PreparedStatement is NULL in getProductTableList");
				}
			} else {
				LOG.error("HC- Connection is NULL in getProductTableList");
			}
		} catch (SQLException ex) {
			LOG.error("HC- SQL Exception in getProductTableList - " + ex);
		} finally {
			DbUtil.closeConnection(conn);
		}
		return productTableList;
	}
	
	public List<MainProductTableVO> getCityProductTableJoinList() {

		List<MainProductTableVO> productTableList = new LinkedList<MainProductTableVO>();
		Connection conn = null;

		String sqlQuery = "SELECT * FROM " + GC.MAIN_PRODUCT_TABLE + " INNER JOIN " + GC.CITY_PRODUCT_TABLE
				+ " ON " + GC.MAIN_PRODUCT_TABLE + "." + GC.PRODUCT_MAIN_ID
				+ "=" +  GC.CITY_PRODUCT_TABLE + "." + GC.CITY_MAIN_ID;

		try {
			conn = DbUtil.getConnection();

			if (conn != null) {
				PreparedStatement preparedStatement = conn
						.prepareStatement(sqlQuery);

				if (preparedStatement != null) {
					ResultSet resultSet = preparedStatement.executeQuery();

					if (resultSet != null) {
						while (resultSet.next()) {
							
							MainProductTableVO singleProduct = new MainProductTableVO();

							singleProduct.setMainId(resultSet.getString(GC.CITY_PRODUCT_ID));
							singleProduct.setName(resultSet.getString(GC.PRODUCT_NAME));
							singleProduct.setCompany(resultSet.getString(GC.PRODUCT_COMPANY));
							singleProduct.setCategory(resultSet.getString(GC.PRODUCT_CATEGORY));
							singleProduct.setSubCategory(resultSet.getString(GC.PRODUCT_SUB_CATEGORY));
							singleProduct.setDescription(resultSet.getString(GC.PRODUCT_DESCRIPTION));
							singleProduct.setDetailDescription(resultSet.getString(GC.PRODUCT_DETAIL_DESCRIPTION));
							singleProduct.setThumbnailImage(resultSet.getString(GC.PRODUCT_THUMBNAIL_IMAGE));
							singleProduct.setDetailImages(resultSet.getString(GC.PRODUCT_DETAIL_IMAGES));
							singleProduct.setDisplayStartDate(resultSet.getString(GC.PRODUCT_DISPLAY_START_DATE));
							singleProduct.setDisplayEndDate(resultSet.getString(GC.PRODUCT_DISPLAY_END_DATE));
							singleProduct.setBookingStartDate(resultSet.getString(GC.PRODUCT_BOOKING_START_DATE));
							singleProduct.setBookingEndDate(resultSet.getString(GC.PRODUCT_BOOKING_END_DATE));
							singleProduct.setInventoryUnit(resultSet.getString(GC.PRODUCT_INVENTORY_UNIT));
							singleProduct.setMinimumPurchage(resultSet.getString(GC.PRODUCT_MINIMUM_PURCHASE));

							productTableList.add(singleProduct);
						}
					} else {
						LOG.error("HC- resultSet is NULL in getProductTableList");
					}
				} else {
					LOG.error("HC- PreparedStatement is NULL in getProductTableList");
				}
			} else {
				LOG.error("HC- Connection is NULL in getProductTableList");
			}
		} catch (SQLException ex) {
			LOG.error("HC- SQL Exception in getProductTableList - " + ex);
		} finally {
			DbUtil.closeConnection(conn);
		}
		return productTableList;
	}
}
