package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.JsonMapper;
import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.dao.ReadCityProductTable;
import com.grocery.store.vo.CityProductTableVO;
import com.grocery.store.vo.OfferDetailInventoryPerIdVO;
import com.grocery.store.vo.OfferDetailInventoryVO;

public class OfferDetailInventoryServlet extends HttpServlet {
	
	/**
	 * Default Serialized version for a servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(OfferDetailInventoryServlet.class.getName());

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		OfferDetailInventoryPerIdVO offerInventory = new OfferDetailInventoryPerIdVO();
		try {
			
			String json = "Pass parameter with name " + GC.PRODUCT_ID;
			
			// setting the content type
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			String productId =  request.getParameter(GC.PRODUCT_ID);
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();
			
			if (StringUtils.isNotEmpty(productId)) {
				
				ReadCityProductTable cityTable = new ReadCityProductTable();
				CityProductTableVO productDetail = new CityProductTableVO();
				productDetail = cityTable.getCityProductDetail(productId);
				
				offerInventory.setCost(productDetail.getCost());
				offerInventory.setDisc(productDetail.getDiscount());
				offerInventory.setInv(productDetail.getInventory());
				
				OfferDetailInventoryVO inventory = new OfferDetailInventoryVO();
				inventory.setInventory(offerInventory);
			
				json = JsonMapper.getStringJsonFromJavaBean(inventory);
				printResponse.write(json);
			} else {
				LOG.error("Pass parameter with name " + GC.PRODUCT_ID);
				
				printResponse.write(json);
			}
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet OfferInventoryServlet: " + exp);
		}
	}
}
