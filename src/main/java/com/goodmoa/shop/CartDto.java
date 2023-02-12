package com.goodmoa.shop;

public class CartDto {
	private Integer cart_num;
	private Integer product_num;
	private String custom_id;
	private Integer cart_count;
	
	private int num;
	private String product_name;
	private Integer product_price;
	
	public CartDto() {}
	public CartDto(Integer cart_num, Integer product_num, String custom_id, Integer cart_count) {
		this.cart_num = cart_num;
		this.product_num = product_num;
		this.custom_id = custom_id;
		this.cart_count = cart_count;
	}
	
	public Integer getCart_num() {
		return cart_num;
	}
	public void setCart_num(Integer cart_num) {
		this.cart_num = cart_num;
	}
	public Integer getProduct_num() {
		return product_num;
	}
	public void setProduct_num(Integer product_num) {
		this.product_num = product_num;
	}
	public String getCustom_id() {
		return custom_id;
	}
	public void setCustom_id(String custom_id) {
		this.custom_id = custom_id;
	}
	public Integer getCart_count() {
		return cart_count;
	}
	public void setCart_count(Integer cart_count) {
		this.cart_count = cart_count;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	
	
}
