package com.goodmoa.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodmoa.shop.ProductDto;
import com.goodmoa.shop.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao dao;
	
	public List<ProductDto> listBest() throws Exception {
		return dao.selectBest();
	}
	
	public List<ProductDto> listSale() throws Exception {
		return dao.selectSale();
	}
	
	public List<ProductDto> listNew() throws Exception {
		return dao.selectNew();
	}
	
	public ProductDto detail(Integer product_num) throws Exception {
		return dao.selectDetail(product_num);
	}
	
	public List<ProductDto> listMaple() throws Exception {
		return dao.selectMaple();
	}
	
	public List<ProductDto> listBattle() throws Exception {
		return dao.selectBattle();
	}
	
	public List<ProductDto> listArk() throws Exception {
		return dao.selectArk();
	}
	
	public List<ProductDto> listKingdom() throws Exception {
		return dao.selectKingdom();
	}
}
