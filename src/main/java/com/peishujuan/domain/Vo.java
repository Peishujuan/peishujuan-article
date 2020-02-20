package com.peishujuan.domain;

import java.util.Date;

public class Vo {

	private String startDate;//开始日期
	private String endDate;//结束日期
		
	private String orderName; //排序：作者、发表时间、点击数量
	
	private String orderMethod; // desc asc

	



	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public String getOrderMethod() {
		return orderMethod;
	}

	public void setOrderMethod(String orderMethod) {
		this.orderMethod = orderMethod;
	}

	@Override
	public String toString() {
		return "Vo [startDate=" + startDate + ", endDate=" + endDate + ", orderName=" + orderName + ", orderMethod="
				+ orderMethod + "]";
	}



	

	
	
	
}
