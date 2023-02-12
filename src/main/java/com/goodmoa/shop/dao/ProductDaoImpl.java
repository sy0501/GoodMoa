package com.goodmoa.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodmoa.shop.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SqlSession session;
	String namespace = "com.goodmoa.shop.dao.ProductMapper.";
	
	public List<ProductDto> selectBest() throws Exception {
		return session.selectList(namespace + "selectBest");
	}
	
	public List<ProductDto> selectSale() throws Exception {
		return session.selectList(namespace + "selectSale");
	}
	
	public List<ProductDto> selectNew() throws Exception {
		return session.selectList(namespace + "selectAll");
	}
	
	public ProductDto selectDetail(Integer product_num) throws Exception {
		return session.selectOne(namespace + "selectDetail", product_num);
	}
	
	public List<ProductDto> selectMaple() throws Exception {
		return session.selectList(namespace + "selectMaple");
	}
	
	public List<ProductDto> selectBattle() throws Exception {
		return session.selectList(namespace + "selectBattle");
	}
	
	public List<ProductDto> selectArk() throws Exception {
		return session.selectList(namespace + "selectArk");
	}
	
	public List<ProductDto> selectKingdom() throws Exception {
		return session.selectList(namespace + "selectKingdom");
	}
}
