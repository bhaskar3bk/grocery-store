package com.grocery.store.vo;

public class AddressVO {
	
	int id;
	
	String firstLine;
	String secondLine;
	String thirdLine;
	String state;
	String city;
	String contactNumber;
	String pinCode;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFirstLine() {
		return firstLine;
	}
	
	public void setFirstLine(String firstLine) {
		this.firstLine = firstLine;
	}
	
	public String getSecondLine() {
		return secondLine;
	}
	
	public void setSecondLine(String secondLine) {
		this.secondLine = secondLine;
	}
	
	public String getThirdLine() {
		return thirdLine;
	}
	
	public void setThirdLine(String thirdLine) {
		this.thirdLine = thirdLine;
	}
	
	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getContactNumber() {
		return contactNumber;
	}
	
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	public String getPinCode() {
		return pinCode;
	}
	
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	@Override
	public String toString() {
		return "AddressVO [id=" + id + ", firstLine=" + firstLine
				+ ", secondLine=" + secondLine + ", thirdLine=" + thirdLine
				+ ", state=" + state + ", city=" + city + ", contactNumber="
				+ contactNumber + ", pinCode=" + pinCode + "]";
	}
	
}
