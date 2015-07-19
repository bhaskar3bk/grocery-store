package com.grocery.store.action;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.grocery.store.common.Log4jLogger;
import com.grocery.store.util.OfferDetailUtility;
import com.grocery.store.vo.OfferDetailVO;

public class OfferDetailAction {

	/** Logger for log messages. */
	private static final Log4jLogger LOG = Log4jLogger.getLogger(OfferDetailAction.class.getName());

	private OfferDetailVO detail;
	private String offerId;
	private String offerName;

	public String execute() {
		
		try {
			Map<String, OfferDetailVO> offerDetail;
			
			String offer = getOfferId();
			String name = getOfferName();
			
			if (StringUtils.isNotEmpty(offer) && "force".equalsIgnoreCase(offer)
					&& StringUtils.isNotEmpty(name) && "true".equalsIgnoreCase(name)) {
				OfferDetailUtility.setOfferDetailMap(null);
			}
			
			offerDetail = OfferDetailUtility.getOfferDetailMap();
			
			this.detail = offerDetail.get(offer);
			
		} catch (Exception exp) {
			LOG.error("Exception in action OfferDetailAction: " + exp);
		}

		return "SUCCESS";
	}
	
	public OfferDetailVO getDetail() {
		return detail;
	}

	public void setDetail(OfferDetailVO detail) {
		this.detail = detail;
	}

	public String getOfferId() {
		return offerId;
	}

	public void setOfferId(String offerId) {
		this.offerId = offerId;
	}

	public String getOfferName() {
		return offerName;
	}

	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}
}
