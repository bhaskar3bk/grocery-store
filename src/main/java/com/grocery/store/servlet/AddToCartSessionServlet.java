package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.JsonMapper;
import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.vo.AddToCartSessionPerIdVO;
import com.grocery.store.vo.AddToCartSessionVO;

public class AddToCartSessionServlet extends HttpServlet {

	/**
	 * Default Serialized version for a servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(AddToCartSessionServlet.class.getName());
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			String json = "Error";
			
			// setting the content type
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();
			
			String productId = request.getParameter("productId");
			String productName = request.getParameter("productName");
			String productImageUrl = request.getParameter("productImageUrl");
			String perCost = request.getParameter("perCost");
			String quantity = request.getParameter("quantity");
			
			HttpSession session = request.getSession();
			
			if (StringUtils.isNotEmpty(productId) && StringUtils.isNotEmpty(productName)
					&& StringUtils.isNotEmpty(perCost) && StringUtils.isNotEmpty(quantity)) {
				
				List<AddToCartSessionPerIdVO> itemsList = new LinkedList<AddToCartSessionPerIdVO>();
				AddToCartSessionVO addToCartVO = new AddToCartSessionVO();
				
				String[] productIdList = productId.split(Pattern.quote(GC.DOUBLE_PIPE));
				String[] productNameList = productName.split(Pattern.quote(GC.DOUBLE_PIPE));
				String[] productImageUrlList = productImageUrl.split(Pattern.quote(GC.DOUBLE_PIPE));
				String[] perCostList = perCost.split(Pattern.quote(GC.DOUBLE_PIPE));
				String[] quantityList = quantity.split(Pattern.quote(GC.DOUBLE_PIPE));
				
				for (int i = 0; i < productIdList.length; i++) {
					AddToCartSessionPerIdVO cart = new AddToCartSessionPerIdVO();
					if (StringUtils.isNotEmpty(productIdList[i])) {
						cart.setId(productIdList[i]);
						cart.setName(productNameList[i]);
						cart.setCost(Double.parseDouble(perCostList[i]));
						cart.setQuant(Double.parseDouble(quantityList[i]));
						
						if (productImageUrlList.length > i) {
							cart.setUrl(productImageUrlList[i]);
						} else {
							cart.setUrl(GC.EMPTY_STRING);
						}
						
						itemsList.add(cart);
					}
				}
				addToCartVO.setItems(itemsList);
		
				json = JsonMapper.getStringJsonFromJavaBean(addToCartVO);
				
				session.setAttribute("sessionJson", json);
			}
			printResponse.write((String) session.getAttribute("sessionJson"));
			
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet ArduinoReadServlet: " + exp);
		}
	}
	
}
