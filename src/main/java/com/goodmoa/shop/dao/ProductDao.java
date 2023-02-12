package com.goodmoa.shop.dao;

import java.util.List;

import com.goodmoa.shop.ProductDto;

public interface ProductDao {

	List<ProductDto> selectBest() throws Exception;
	
	List<ProductDto> selectSale() throws Exception;
	
	List<ProductDto> selectNew() throws Exception;
	
	ProductDto selectDetail(Integer product_num) throws Exception;
	
	List<ProductDto> selectMaple() throws Exception;
	
	List<ProductDto> selectBattle() throws Exception;
	
	List<ProductDto> selectArk() throws Exception;
	
	List<ProductDto> selectKingdom() throws Exception;
}