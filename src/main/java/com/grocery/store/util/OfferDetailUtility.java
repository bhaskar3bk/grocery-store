package com.grocery.store.util;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.constants.GC;
import com.grocery.store.dao.ReadMainProductTable;
import com.grocery.store.vo.MainProductTableVO;
import com.grocery.store.vo.OfferDetailVO;

public class OfferDetailUtility {

	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(OfferDetailUtility.class.getName());
	
	/** The product info list. */
	private static Map<String, OfferDetailVO> offerDetailMap;

	public static Map<String, OfferDetailVO> getOfferDetailMap() {
		if (null == offerDetailMap || offerDetailMap.isEmpty()) {
			offerDetailMap = getOfferDetailList();
		 }
		return offerDetailMap;
	}

	public static void setOfferDetailMap(Map<String, OfferDetailVO> offerDetailMap) {
		OfferDetailUtility.offerDetailMap = offerDetailMap;
	}
	
	public static Map<String, OfferDetailVO> getOfferDetailList() {
		
		Map<String, OfferDetailVO> offerDetail = new HashMap<String, OfferDetailVO>();
		
		try {
			ReadMainProductTable tableList = new ReadMainProductTable();
			
			
			List<MainProductTableVO> productTableList = new LinkedList<MainProductTableVO>();
			
			productTableList = tableList.getCityProductTableJoinList();
			
			for (MainProductTableVO productVo : productTableList) {

				OfferDetailVO info = new OfferDetailVO();
				
				info.setProductId(productVo.getMainId());
				info.setName(productVo.getName());
				info.setCompany(productVo.getCompany());
				info.setCategory(productVo.getCategory());
				info.setSubCategory(productVo.getSubCategory());
				info.setDescription(productVo.getDescription());
				info.setDetailDescription(productVo.getDetailDescription());
				info.setImage1(GC.EMPTY_STRING);
				info.setImage2(GC.EMPTY_STRING);
				info.setImage3(GC.EMPTY_STRING);
				info.setImage4(GC.EMPTY_STRING);
				info.setImage5(GC.EMPTY_STRING);
				info.setInventoryUnit(productVo.getInventoryUnit());
				info.setMinimumPurchage(productVo.getMinimumPurchage());
				
				String images = productVo.getDetailImages();
				if (StringUtils.isNotEmpty(images) && images.contains(GC.COMMA)) {
					String[] imageList = images.split(GC.COMMA);
					int length = imageList.length;
					if (length >= 5) {
						info.setImage5(imageList[4]);
					}
					if (length >= 4) {
						info.setImage4(imageList[3]);
					}
					if (length >= 3) {
						info.setImage3(imageList[2]);
					}
					if (length >= 2) {
						info.setImage2(imageList[1]);
					}
					if (length >= 1) {
						info.setImage1(imageList[0]);
					}
				} else {
					info.setImage1(images);
				}
				
				offerDetail.put(productVo.getMainId(), info);
			}
		}catch (Exception ex) {
			LOG.error("HC- SQL Exception in getCityProductTableJoinList - " + ex);
		}
		return offerDetail;
	}
}
