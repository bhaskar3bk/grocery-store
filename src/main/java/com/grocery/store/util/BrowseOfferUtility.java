package com.grocery.store.util;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.dao.ReadMainProductTable;
import com.grocery.store.vo.BrowseOfferPerIdVO;
import com.grocery.store.vo.MainProductTableVO;

public class BrowseOfferUtility {
	
	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(ReadMainProductTable.class.getName());
	
	/** The product info list. */
	private static Map<String, BrowseOfferPerIdVO> browseOfferList;
	
	public static Map<String, BrowseOfferPerIdVO> getBrowseOfferList() {
		if (null == browseOfferList || browseOfferList.isEmpty()) {
			browseOfferList = getOfferList();
		 }
		return browseOfferList;
	}

	public static void setBrowseOfferList(Map<String, BrowseOfferPerIdVO> browseOfferList) {
		BrowseOfferUtility.browseOfferList = browseOfferList;
	}

	public static Map<String, BrowseOfferPerIdVO> getOfferList() {
		
		Map<String, BrowseOfferPerIdVO> browseOffer = new HashMap<String, BrowseOfferPerIdVO>();
		
		try {
			ReadMainProductTable tableList = new ReadMainProductTable();
			
			
			List<MainProductTableVO> productTableList = new LinkedList<MainProductTableVO>();
			
			productTableList = tableList.getProductTableList();
			
			for (MainProductTableVO productVo : productTableList) {

				BrowseOfferPerIdVO info = new BrowseOfferPerIdVO();
				
				info.setName(productVo.getName());
				info.setDesc(productVo.getDescription());
				info.setUnit(productVo.getInventoryUnit());
				
				String images = productVo.getThumbnailImage();
				if (StringUtils.isNotEmpty(images) && images.contains(",")) {
					info.setImg1(images.split(",")[0]);
					info.setImg2(images.split(",")[1]);
				} else {
					info.setImg1(images);
					info.setImg2("");
				}
				
				browseOffer.put(productVo.getMainId(), info);
			}
		}catch (Exception ex) {
			LOG.error("HC- SQL Exception in getOfferList - " + ex);
		}
		
		return browseOffer;
	}
}
