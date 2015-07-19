package com.grocery.store.vo;

import java.util.List;
import java.util.Map;

public class InventoryListPerIdVO {

	private Map<String, OfferInventoryPerIdVO> offerInventory;
	private List<String> defaultList;

	public Map<String, OfferInventoryPerIdVO> getOfferInventory() {
		return offerInventory;
	}

	public void setOfferInventory(Map<String, OfferInventoryPerIdVO> offerInventory) {
		this.offerInventory = offerInventory;
	}

	public List<String> getDefaultList() {
		return defaultList;
	}

	public void setDefaultList(List<String> defaultList) {
		this.defaultList = defaultList;
	}
}
