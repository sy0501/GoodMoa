package com.goodmoa.shop;

import java.util.Objects;

public class ProductDto {
	private Integer product_num;
	private String cate_code;
	private String product_name;
	private Integer product_price;
	private Integer product_stock;
	private Integer product_best;
	private Integer product_discount;
	private String product_content;
	
	public ProductDto() {}

	public ProductDto(Integer product_num, String cate_code, String product_name, Integer product_price,
			Integer product_stock, Integer product_best, Integer product_discount, String product_content) {
		this.product_num = product_num;
		this.cate_code = cate_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.product_best = product_best;
		this.product_discount = product_discount;
		this.product_content = product_content;
	}

	public Integer getProduct_num() {
		return product_num;
	}

	public void setProduct_num(Integer product_num) {
		this.product_num = product_num;
	}

	public String getCate_code() {
		return cate_code;
	}

	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public Integer getProduct_price() {
		return product_price;
	}

	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}

	public Integer getProduct_stock() {
		return product_stock;
	}

	public void setProduct_stock(Integer product_stock) {
		this.product_stock = product_stock;
	}

	public Integer getProduct_best() {
		return product_best;
	}

	public void setProduct_best(Integer product_best) {
		this.product_best = product_best;
	}

	public Integer getProduct_discount() {
		return product_discount;
	}

	public void setProduct_discount(Integer product_discount) {
		this.product_discount = product_discount;
	}

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}

	@Override
	public String toString() {
		return "ProductDto [product_num=" + product_num + ", cate_code=" + cate_code + ", product_name=" + product_name
				+ ", product_price=" + product_price + ", product_stock=" + product_stock + ", product_best="
				+ product_best + ", product_discount=" + product_discount + ", product_content=" + product_content
				+ "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(cate_code, product_num);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductDto other = (ProductDto) obj;
		return Objects.equals(cate_code, other.cate_code) && Objects.equals(product_num, other.product_num);
	}

}
