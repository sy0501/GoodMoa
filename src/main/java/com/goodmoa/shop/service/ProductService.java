package com.goodmoa.shop.service;

import java.util.List;

import com.goodmoa.shop.ProductDto;

public interface ProductService {

	List<ProductDto> listBest() throws Exception;

	List<ProductDto> listSale() throws Exception;
	
	List<ProductDto> listNew() throws Exception;
	
	ProductDto detail(Integer product_num) throws Exception;
	
	List<ProductDto> listMaple() throws Exception;
	
	List<ProductDto> listBattle() throws Exception;
	
	List<ProductDto> listArk() throws Exception;
	
	List<ProductDto> listKingdom() throws Exception;
}