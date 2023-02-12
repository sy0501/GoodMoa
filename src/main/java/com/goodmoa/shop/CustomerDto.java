package com.goodmoa.shop;

import java.util.Objects;

public class CustomerDto {
	private String custom_id;
	private String custom_pw;
	private String custom_name;
	private String custom_tel;
	private String custom_addr;
	
	public CustomerDto() {}
	public CustomerDto(String custom_id, String custom_pw, String custom_name, String custom_tel, String custom_addr) {
		this.custom_id = custom_id;
		this.custom_pw = custom_pw;
		this.custom_name = custom_name;
		this.custom_tel = custom_tel;
		this.custom_addr = custom_addr;
	}
	
	public String getCustom_id() {
		return custom_id;
	}
	public void setCustom_id(String custom_id) {
		this.custom_id = custom_id;
	}
	public String getCustom_pw() {
		return custom_pw;
	}
	public void setCustom_pw(String custom_pw) {
		this.custom_pw = custom_pw;
	}
	public String getCustom_name() {
		return custom_name;
	}
	public void setCustom_name(String custom_name) {
		this.custom_name = custom_name;
	}
	public String getCustom_tel() {
		return custom_tel;
	}
	public void setCustom_tel(String custom_tel) {
		this.custom_tel = custom_tel;
	}
	public String getCustom_addr() {
		return custom_addr;
	}
	public void setCustom_addr(String custom_addr) {
		this.custom_addr = custom_addr;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(custom_id, custom_pw);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CustomerDto other = (CustomerDto) obj;
		return Objects.equals(custom_id, other.custom_id) && Objects.equals(custom_pw, other.custom_pw);
	}
	
	
	
	
	
	
}
