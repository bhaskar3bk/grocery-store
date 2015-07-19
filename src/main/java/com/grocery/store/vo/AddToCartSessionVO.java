package com.grocery.store.vo;

import java.util.List;

public class AddToCartSessionVO {

	private List<AddToCartSessionPerIdVO> items;
	private String coupan;
	private double disc;

	public List<AddToCartSessionPerIdVO> getItems() {
		return items;
	}

	public void setItems(List<AddToCartSessionPerIdVO> items) {
		this.items = items;
	}

	public String getCoupan() {
		return coupan;
	}

	public void setCoupan(String coupan) {
		this.coupan = coupan;
	}

	public double getDisc() {
		return disc;
	}

	public void setDisc(double disc) {
		this.disc = disc;
	}
}
