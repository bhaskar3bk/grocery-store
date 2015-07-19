package com.grocery.store.vo;

import java.util.Map;

public class OfferListPerIdVO {

	private Map<String, BrowseOfferPerIdVO> browseOffers;

	public Map<String, BrowseOfferPerIdVO> getBrowseOffers() {
		return browseOffers;
	}

	public void setBrowseOffers(Map<String, BrowseOfferPerIdVO> browseOffers) {
		this.browseOffers = browseOffers;
	}
}