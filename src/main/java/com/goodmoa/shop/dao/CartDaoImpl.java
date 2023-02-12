package com.goodmoa.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodmoa.shop.CartDto;

@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	SqlSession session;
	String namespace = "com.goodmoa.shop.dao.CartMapper.";
	
	@Override
	public void addCart(CartDto dto) throws Exception{
		session.insert(namespace + "addCart", dto);
	}
	
	@Override
	public int countCart(Integer product_num, String custom_id) throws Exception {
		Map map = new HashMap();
		map.put("product_num", product_num);
		map.put("custom_id", custom_id);
		return session.selectOne(namespace + "countCart", map);
	}
	
	@Override
	public void updateCart(CartDto dto) throws Exception {
		session.update(namespace + "updateCart", dto);
	}
	
	@Override
	public List<CartDto> cartList(String custom_id) throws Exception {
		return session.selectList(namespace + "cartList", custom_id);
	}
	
	@Override
	public int deleteCart(Integer cart_num) throws Exception {
		return session.delete(namespace + "deleteCart", cart_num);
	}

	@Override
	public int sumPrice(String custom_id) throws Exception {
		return session.selectOne(namespace + "sumPrice", custom_id);
	}

}
