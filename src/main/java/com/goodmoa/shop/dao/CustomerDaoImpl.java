package com.goodmoa.shop.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodmoa.shop.CustomerDto;

@Repository
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	SqlSession session;
	String namespace = "com.goodmoa.shop.dao.CustomerMapper.";
	
	@Override
	public int join(CustomerDto dto) throws Exception{
		return session.insert(namespace + "join", dto);
	}
	
	@Override
	public CustomerDto login(HashMap<String, String> map) throws Exception{
		return session.selectOne(namespace + "login", map);
	}

	
	
	
	
	

}