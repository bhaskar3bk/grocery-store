package com.grocery.store.constants;

public class GC {
	
	/**
	 * Instantiates a new global constants.
	 */
	private GC() {
	}
		
	public static final String EMPTY_STRING = "";
	public static final String DOUBLE_PIPE = "||";
	public static final String COMMA = ",";
	
	/**
	 * Arduino Reading parameters
	 */
	public static final String CUSTOMER_ID = "customerId";
	public static final String PRODUCT_ID = "productId";
	
	/**
	 * DataBase Table : Customer_Product
	 */
	public static final String TABLE_CUSTOMER_PRODUCT = "Customer_Product";
	public static final String DB_CUSTOMER_ID = "CustomerID";
	public static final String DB_PRODUCT_ID = "ProductID";
	
	
	/**
	 * DataBase Table : MAIN_PRODUCT_TABLE
	 */
	public static final String MAIN_PRODUCT_TABLE = "MAIN_PRODUCT_TABLE";
	public static final String PRODUCT_MAIN_ID = "MAIN_ID";
	public static final String PRODUCT_NAME = "NAME";
	public static final String PRODUCT_COMPANY = "COMPANY";
	public static final String PRODUCT_CATEGORY = "CATEGORY";
	public static final String PRODUCT_SUB_CATEGORY = "SUB_CATEGORY";
	public static final String PRODUCT_DESCRIPTION = "DESCRIPTION";
	public static final String PRODUCT_DETAIL_DESCRIPTION = "DETAIL_DESCRIPTION";
	public static final String PRODUCT_THUMBNAIL_IMAGE = "THUMBNAIL_IMAGE";
	public static final String PRODUCT_DETAIL_IMAGES = "DETAIL_IMAGES";
	public static final String PRODUCT_DISPLAY_START_DATE = "DISPLAY_START_DATE";
	public static final String PRODUCT_DISPLAY_END_DATE = "DISPLAY_END_DATE";
	public static final String PRODUCT_BOOKING_START_DATE = "BOOKING_START_DATE";
	public static final String PRODUCT_BOOKING_END_DATE = "BOOKING_END_DATE";
	public static final String PRODUCT_INVENTORY_UNIT = "INVENTORY_UNIT";
	public static final String PRODUCT_MINIMUM_PURCHASE = "MINIMUM_PURCHASE";
	
	/**
	 * DataBase Table : CITY_PRODUCT_TABLE
	 */
	public static final String CITY_PRODUCT_TABLE = "CITY_PRODUCT_TABLE";
	public static final String CITY_PRODUCT_ID = "PRODUCT_ID";
	public static final String CITY_SOURCE_CITY_ID = "SOURCE_CITY_ID";
	public static final String CITY_TARGET_CITY_ID = "TARGET_CITY_ID";
	public static final String CITY_MAIN_ID = "MAIN_ID";
	public static final String CITY_COST = "COST";
	public static final String CITY_DISCOUNT = "DISCOUNT";
	public static final String CITY_INVENTORY = "INVENTORY";
}
