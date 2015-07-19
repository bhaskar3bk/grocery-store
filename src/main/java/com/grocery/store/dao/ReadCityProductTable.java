package com.grocery.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.vo.CityProductTableVO;

public class ReadCityProductTable {
	
	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(ReadCityProductTable.class.getName());

	public List<CityProductTableVO> getCityProductTableList() {

		List<CityProductTableVO> productTableList = new LinkedList<CityProductTableVO>();
		Connection conn = null;

		String sqlQuery = "SELECT * FROM " + GC.CITY_PRODUCT_TABLE;

		try {
			conn = DbUtil.getConnection();

			if (conn != null) {
				PreparedStatement preparedStatement = conn
						.prepareStatement(sqlQuery);

				if (preparedStatement != null) {
					ResultSet resultSet = preparedStatement.executeQuery();

					if (resultSet != null) {
						while (resultSet.next()) {
							
							CityProductTableVO singleProduct = new CityProductTableVO();

							singleProduct.setProductId(resultSet.getString(GC.CITY_PRODUCT_ID));
							singleProduct.setSourceCity(resultSet.getString(GC.CITY_SOURCE_CITY_ID));
							singleProduct.setTargetCity(resultSet.getString(GC.CITY_TARGET_CITY_ID));
							singleProduct.setMainId(resultSet.getString(GC.CITY_MAIN_ID));
							singleProduct.setCost(resultSet.getDouble(GC.CITY_COST));
							singleProduct.setDiscount(resultSet.getDouble(GC.CITY_DISCOUNT));
							singleProduct.setInventory(resultSet.getDouble(GC.CITY_INVENTORY));

							productTableList.add(singleProduct);
						}
					} else {
						LOG.error("HC- resultSet is NULL in getCityProductTableList");
					}
				} else {
					LOG.error("HC- PreparedStatement is NULL in getCityProductTableList");
				}
			} else {
				LOG.error("HC- Connection is NULL in getCityProductTableList");
			}
		} catch (SQLException ex) {
			LOG.error("HC- SQL Exception in getCityProductTableList - " + ex);
		} finally {
			DbUtil.closeConnection(conn);
		}
		return productTableList;
	}
	
	public CityProductTableVO getCityProductDetail(final String productID) {

		CityProductTableVO productDetail = new CityProductTableVO();
		Connection conn = null;

		String sqlQuery = "SELECT * FROM " + GC.CITY_PRODUCT_TABLE + " WHERE " + GC.CITY_PRODUCT_ID + "='" + productID + "'";

		try {
			conn = DbUtil.getConnection();

			if (conn != null) {
				PreparedStatement preparedStatement = conn .prepareStatement(sqlQuery);

				if (preparedStatement != null) {
					ResultSet resultSet = preparedStatement.executeQuery();

					if (resultSet != null) {
						while (resultSet.next()) {

							productDetail.setProductId(resultSet.getString(GC.CITY_PRODUCT_ID));
							productDetail.setMainId(resultSet.getString(GC.CITY_MAIN_ID));
							productDetail.setCost(resultSet.getDouble(GC.CITY_COST));
							productDetail.setDiscount(resultSet.getDouble(GC.CITY_DISCOUNT));
							productDetail.setInventory(resultSet.getDouble(GC.CITY_INVENTORY));

						}
					} else {
						LOG.error("HC- resultSet is NULL in getCityProductTableList");
					}
				} else {
					LOG.error("HC- PreparedStatement is NULL in getCityProductTableList");
				}
			} else {
				LOG.error("HC- Connection is NULL in getCityProductTableList");
			}
		} catch (SQLException ex) {
			LOG.error("HC- SQL Exception in getCityProductTableList - " + ex);
		} finally {
			DbUtil.closeConnection(conn);
		}
		return productDetail;
	}
}
