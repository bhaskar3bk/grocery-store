package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.dao.AddCustomersProduct;

public class ArduinoReadServlet extends HttpServlet {

	/**
	 * Default Serialized version for a hardware read servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(ArduinoReadServlet.class.getName());

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			// setting the content type
			response.setContentType("text/html");
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();

			String customerId = request.getParameter(GC.CUSTOMER_ID);
			String productId =  request.getParameter(GC.PRODUCT_ID);
			
			if (StringUtils.isNotEmpty(customerId) && StringUtils.isNotEmpty(productId)) {
				
				AddCustomersProduct customerOrder = new AddCustomersProduct();
				boolean productAdded = customerOrder.addCustomerButtonOrder(customerId, productId);
				
				if (productAdded) {
					// writing html in the stream
					printResponse.println("<html><body>");
					printResponse.println("customerId " + customerId);
					printResponse.println("<br/>");
					printResponse.println("productId " + productId);
					printResponse.println("</body></html>");
				} else {
					printResponse = printError(printResponse, "Failed in saving customer ID and Prodct ID in Data Base");
				}
				
			} else {
				LOG.error("Error while reading the Customer Detail. Customer ID is: "
						+ customerId + " where product ID is: " + productId);
				
				printResponse = printError(printResponse, "Error while reading servlet parameters");
			}
			
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet ArduinoReadServlet: " + exp);
		}
	}
	
	public PrintWriter printError(PrintWriter printError, final String errorStatement) {
		
		// writing html in the stream
		printError.println("<html><title>");
		printError.println("Error");
		printError.println("</title><body>");
		printError.println(errorStatement);
		printError.println("</body></html>");
		
		return printError;
	}
}
