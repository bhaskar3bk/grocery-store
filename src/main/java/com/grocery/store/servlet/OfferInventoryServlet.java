package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.grocery.store.common.JsonMapper;
import com.grocery.store.common.Log4jLogger;
import com.grocery.store.util.OfferInventoryUtility;
import com.grocery.store.vo.InventoryListPerIdVO;

public class OfferInventoryServlet extends HttpServlet {
	
	/**
	 * Default Serialized version for a servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(OfferInventoryServlet.class.getName());

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			String json = "Error";
			
			// setting the content type
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();
			
			InventoryListPerIdVO offerInventory = new InventoryListPerIdVO();
			offerInventory = OfferInventoryUtility.getOfferList();
			
			if (null != offerInventory) {
				json = JsonMapper.getStringJsonFromJavaBean(offerInventory);
				printResponse.write(json);
			} else {
				LOG.error("Error while reading the Table");
				
				printResponse.write(json);
			}
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet OfferInventoryServlet: " + exp);
		}
	}
}
