package com.grocery.store.util;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.dao.ReadCityProductTable;
import com.grocery.store.vo.CityProductTableVO;
import com.grocery.store.vo.InventoryListPerIdVO;
import com.grocery.store.vo.OfferInventoryPerIdVO;

public class OfferInventoryUtility {

	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(OfferInventoryUtility.class.getName());
	
	public static InventoryListPerIdVO getOfferList() {
		
		InventoryListPerIdVO offerInventoryVo = new InventoryListPerIdVO();
		
		Map<String, OfferInventoryPerIdVO> offerInventoryMap = new HashMap<String, OfferInventoryPerIdVO>();
		List<String> defaultList = new LinkedList<String>();
		
		try {
			ReadCityProductTable tableList = new ReadCityProductTable();
			
			
			List<CityProductTableVO> productTableList = new LinkedList<CityProductTableVO>();
			
			productTableList = tableList.getCityProductTableList();
			
			for (CityProductTableVO productVo : productTableList) {

				OfferInventoryPerIdVO info = new OfferInventoryPerIdVO();
				
				info.setMap(productVo.getMainId());
				info.setCost(productVo.getCost());
				info.setDisc(productVo.getDiscount());
				info.setInv(productVo.getInventory());
				
				offerInventoryMap.put(productVo.getProductId(), info);
				
				defaultList.add(productVo.getProductId());
			}
			
			offerInventoryVo.setOfferInventory(offerInventoryMap);
			offerInventoryVo.setDefaultList(defaultList);
			
		}catch (Exception ex) {
			LOG.error("HC- SQL Exception in getOfferList - " + ex);
		}
		
		return offerInventoryVo;
	}
}
