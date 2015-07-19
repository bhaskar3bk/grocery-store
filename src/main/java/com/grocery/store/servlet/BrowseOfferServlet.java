package com.grocery.store.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.JsonMapper;
import com.grocery.store.common.Log4jLogger;
import com.grocery.store.util.BrowseOfferUtility;
import com.grocery.store.vo.BrowseOfferPerIdVO;
import com.grocery.store.vo.OfferListPerIdVO;

public class BrowseOfferServlet extends HttpServlet {
	
	/**
	 * Default Serialized version for a servlet.
	 */
	private static final long serialVersionUID = 1L;
	
	/** 
	 * Logger for log messages. 
	 */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(BrowseOfferServlet.class.getName());

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			
			String json = "Error";
			
			// setting the content type
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			// get the stream to write the data
			PrintWriter printResponse = response.getWriter();
			
			String clearCache = request.getParameter("force");
			if (StringUtils.isNotEmpty(clearCache) && "true".equalsIgnoreCase(clearCache)) {
				BrowseOfferUtility.setBrowseOfferList(null);
			}

			Map<String, BrowseOfferPerIdVO> browseOffer = new HashMap<String, BrowseOfferPerIdVO>();
			browseOffer = BrowseOfferUtility.getBrowseOfferList();
			
			if (null != browseOffer) {
				OfferListPerIdVO offerList = new OfferListPerIdVO();
				offerList.setBrowseOffers(browseOffer);
				json = JsonMapper.getStringJsonFromJavaBean(offerList);
				printResponse.write(json);
			} else {
				LOG.error("Error while reading the Table");
				
				printResponse.write(json);
			}
			// closing the stream
			printResponse.close();
		} catch (Exception exp) {
			LOG.error("Exception in servlet BrowseOfferServlet: " + exp);
		}
	}
}
