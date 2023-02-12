package com.goodmoa.shop.service;

import java.util.List;

import com.goodmoa.shop.CartDto;

public interface CartService {

	void addCart(CartDto dto) throws Exception;

	int countCart(Integer product_num, String custom_id) throws Exception;
	
	void updateCart(CartDto dto) throws Exception;
	
	List<CartDto> cartList(String custom_id) throws Exception;

	int delete(Integer cart_num) throws Exception;

	int sumPrice(String custom_id) throws Exception;

	
	
}