package com.goodmoa.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodmoa.shop.CartDto;
import com.goodmoa.shop.dao.CartDao;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	CartDao dao;
	
	@Override
	public void addCart(CartDto dto) throws Exception{
		dao.addCart(dto); 
	}
	
	@Override
	public int countCart(Integer product_num, String custom_id) throws Exception {
		return dao.countCart(product_num, custom_id);
	}
	
	@Override
	public void updateCart(CartDto dto) throws Exception {
		dao.updateCart(dto);
	}

	@Override
	public List<CartDto> cartList(String custom_id) throws Exception{
		return dao.cartList(custom_id);
	}

	@Override
	public int delete(Integer cart_num) throws Exception {
		return dao.deleteCart(cart_num);
	}

	@Override
	public int sumPrice(String custom_id) throws Exception {
		return dao.sumPrice(custom_id);
	}

}
